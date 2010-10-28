require 'bundler'
Bundler.setup

require File.join(File.dirname(__FILE__), '/../lib/highrise')

Highrise::Base.user = ENV['HIGHRISE_USER'] || 'x'
Highrise::Base.site = ENV['HIGHRISE_SITE'] || 'http://www.example.com'

def turn_methods_public(klass, method_name = nil)
  if method_name
    klass.class_eval do
      public method_name
    end
  else
    turn_all_methods_public klass
  end
end

def turn_all_methods_public(klass)
  klass.class_eval do
    private_instance_methods.each { |instance_method| public instance_method }
    private_methods.each { |method| public_class_method method } 
    protected_instance_methods.each { |instance_method| public instance_method }
    protected_methods.each { |method| public_class_method method } 
  end  
end

shared_examples_for "a paginated class" do
  it { subject.class.included_modules.should include(Highrise::Pagination) }

  it ".find_all_across_pages" do
    subject.class.should_receive(:find).with(:all,{:params=>{:n=>0}}).and_return(["things"])
    subject.class.should_receive(:find).with(:all,{:params=>{:n=>1}}).and_return([])
    subject.class.find_all_across_pages.should == ["things"]
  end
end

shared_examples_for "a taggable class" do
  before(:each) do
    (@tags = []).tap do 
      @tags << {'id' => "414578", 'name' => "cliente"}
      @tags << {'id' => "414580", 'name' => "ged"}
      @tags << {'id' => "414579", 'name' => "iepc"}
    end
  end

  it { subject.class.included_modules.should include(Highrise::Taggable) }

  it "#tags" do
    subject.should_receive(:get).with(:tags).and_return(@tags)
    subject.tags.should == @tags
  end
  
  it "#tag!(tag_name)" do
    subject.should_receive(:post).with(:tags, :name => "client" ).and_return(true)
    subject.tag!("client").should be_true
  end
  
  it "#untag!(tag_name)" do
    subject.should_receive(:get).with(:tags).and_return(@tags)
    subject.should_receive(:delete).with("tags/414578").and_return(true)
    subject.untag!("cliente").should be_true
  end
end