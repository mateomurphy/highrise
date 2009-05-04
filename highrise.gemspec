# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{highrise}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcos Tapaj\303\263s", "Ken Mayer"]
  s.date = %q{2009-05-04}
  s.description = %q{
Based on the original API module from DHH, http://developer.37signals.com/highrise/, this
gem is a cleaned up, tested version of the same. Contributors have added support for tags 
which are not supported by the API directly

Configure by adding the following:

require 'highrise'
Highrise::Base.site = 'http://your_site.highrisehq.com/'
Highrise::Base.user = 'your_api_auth_token'q
Highrise::Base.connection.cache_store = :memory_store # for caching
                          }
  s.email = %q{kmayer@bitwrangler.com}
  s.extra_rdoc_files = [
    "README.mkdn"
  ]
  s.files = [
    "README.mkdn",
    "Rakefile",
    "VERSION.yml",
    "examples/extending.rb",
    "examples/sample.rb",
    "lib/cachable.rb",
    "lib/highrise.rb",
    "lib/highrise/base.rb",
    "lib/highrise/comment.rb",
    "lib/highrise/company.rb",
    "lib/highrise/curlhelper.rb",
    "lib/highrise/curly.rb",
    "lib/highrise/email.rb",
    "lib/highrise/group.rb",
    "lib/highrise/kase.rb",
    "lib/highrise/membership.rb",
    "lib/highrise/note.rb",
    "lib/highrise/pagination.rb",
    "lib/highrise/person.rb",
    "lib/highrise/subject.rb",
    "lib/highrise/tag.rb",
    "lib/highrise/taggable.rb",
    "lib/highrise/task.rb",
    "lib/highrise/user.rb",
    "lib/highrise/version.rb",
    "spec/highrise/base_spec.rb",
    "spec/highrise/cachable_spec.rb",
    "spec/highrise/comment_spec.rb",
    "spec/highrise/companies/16883216.html",
    "spec/highrise/company_spec.rb",
    "spec/highrise/curlhelper_spec.rb",
    "spec/highrise/curly_spec.rb",
    "spec/highrise/email_spec.rb",
    "spec/highrise/group_spec.rb",
    "spec/highrise/kase_spec.rb",
    "spec/highrise/membership_spec.rb",
    "spec/highrise/note_spec.rb",
    "spec/highrise/pagination_spec.rb",
    "spec/highrise/people/16887003.html",
    "spec/highrise/person_spec.rb",
    "spec/highrise/subject_spec.rb",
    "spec/highrise/tag_spec.rb",
    "spec/highrise/task_spec.rb",
    "spec/highrise/user_spec.rb",
    "spec/highrise/version_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/kmayer/highrise}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Ruby wrapper around Highrise API}
  s.test_files = [
    "spec/highrise/base_spec.rb",
    "spec/highrise/cachable_spec.rb",
    "spec/highrise/comment_spec.rb",
    "spec/highrise/company_spec.rb",
    "spec/highrise/curlhelper_spec.rb",
    "spec/highrise/curly_spec.rb",
    "spec/highrise/email_spec.rb",
    "spec/highrise/group_spec.rb",
    "spec/highrise/kase_spec.rb",
    "spec/highrise/membership_spec.rb",
    "spec/highrise/note_spec.rb",
    "spec/highrise/pagination_spec.rb",
    "spec/highrise/person_spec.rb",
    "spec/highrise/subject_spec.rb",
    "spec/highrise/tag_spec.rb",
    "spec/highrise/task_spec.rb",
    "spec/highrise/user_spec.rb",
    "spec/highrise/version_spec.rb",
    "spec/spec_helper.rb",
    "examples/extending.rb",
    "examples/sample.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeresource>, [">= 2.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.1"])
      s.add_runtime_dependency(%q<curb>, [">= 0"])
      s.add_runtime_dependency(%q<hpricot>, [">= 0"])
    else
      s.add_dependency(%q<activeresource>, [">= 2.2"])
      s.add_dependency(%q<activesupport>, [">= 2.1"])
      s.add_dependency(%q<curb>, [">= 0"])
      s.add_dependency(%q<hpricot>, [">= 0"])
    end
  else
    s.add_dependency(%q<activeresource>, [">= 2.2"])
    s.add_dependency(%q<activesupport>, [">= 2.1"])
    s.add_dependency(%q<curb>, [">= 0"])
    s.add_dependency(%q<hpricot>, [">= 0"])
  end
end
