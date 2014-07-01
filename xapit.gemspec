# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{xapit}
  s.version = "0.2.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Bates"]
  s.date = %q{2009-07-07}
  s.description = %q{Ruby library for interacting with Xapian, a full text search engine.}
  s.email = %q{ryan (at) railscasts (dot) com}
  s.extra_rdoc_files = ["CHANGELOG", "lib/xapit/adapters/abstract_adapter.rb", "lib/xapit/adapters/active_record_adapter.rb", "lib/xapit/adapters/data_mapper_adapter.rb", "lib/xapit/collection.rb", "lib/xapit/config.rb", "lib/xapit/facet.rb", "lib/xapit/facet_blueprint.rb", "lib/xapit/facet_option.rb", "lib/xapit/index_blueprint.rb", "lib/xapit/indexers/abstract_indexer.rb", "lib/xapit/indexers/classic_indexer.rb", "lib/xapit/indexers/simple_indexer.rb", "lib/xapit/membership.rb", "lib/xapit/query.rb", "lib/xapit/query_parsers/abstract_query_parser.rb", "lib/xapit/query_parsers/classic_query_parser.rb", "lib/xapit/query_parsers/simple_query_parser.rb", "lib/xapit/rake_tasks.rb", "lib/xapit.rb", "LICENSE", "README.rdoc", "tasks/spec.rb", "tasks/xapit.rake"]
  s.files = ["CHANGELOG", "features/facets.feature", "features/finding.feature", "features/indexing.feature", "features/sorting.feature", "features/step_definitions/common_steps.rb", "features/step_definitions/xapit_steps.rb", "features/suggestions.feature", "features/support/env.rb", "features/support/xapit_helpers.rb", "init.rb", "install.rb", "lib/xapit/adapters/abstract_adapter.rb", "lib/xapit/adapters/active_record_adapter.rb", "lib/xapit/adapters/data_mapper_adapter.rb", "lib/xapit/collection.rb", "lib/xapit/config.rb", "lib/xapit/facet.rb", "lib/xapit/facet_blueprint.rb", "lib/xapit/facet_option.rb", "lib/xapit/index_blueprint.rb", "lib/xapit/indexers/abstract_indexer.rb", "lib/xapit/indexers/classic_indexer.rb", "lib/xapit/indexers/simple_indexer.rb", "lib/xapit/membership.rb", "lib/xapit/query.rb", "lib/xapit/query_parsers/abstract_query_parser.rb", "lib/xapit/query_parsers/classic_query_parser.rb", "lib/xapit/query_parsers/simple_query_parser.rb", "lib/xapit/rake_tasks.rb", "lib/xapit.rb", "LICENSE", "Manifest", "rails_generators/xapit/templates/setup_xapit.rb", "rails_generators/xapit/templates/xapit.rake", "rails_generators/xapit/USAGE", "rails_generators/xapit/xapit_generator.rb", "Rakefile", "README.rdoc", "spec/spec_helper.rb", "spec/xapit/adapters/active_record_adapter_spec.rb", "spec/xapit/adapters/data_mapper_adapter_spec.rb", "spec/xapit/collection_spec.rb", "spec/xapit/config_spec.rb", "spec/xapit/facet_blueprint_spec.rb", "spec/xapit/facet_option_spec.rb", "spec/xapit/facet_spec.rb", "spec/xapit/index_blueprint_spec.rb", "spec/xapit/indexers/abstract_indexer_spec.rb", "spec/xapit/indexers/classic_indexer_spec.rb", "spec/xapit/indexers/simple_indexer_spec.rb", "spec/xapit/membership_spec.rb", "spec/xapit/query_parsers/abstract_query_parser_spec.rb", "spec/xapit/query_parsers/classic_query_parser_spec.rb", "spec/xapit/query_parsers/simple_query_parser_spec.rb", "spec/xapit/query_spec.rb", "spec/xapit_member.rb", "tasks/spec.rb", "tasks/xapit.rake", "uninstall.rb", "xapit.gemspec"]
  s.homepage = %q{http://github.com/ryanb/xapit}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Xapit", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{xapit}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Ruby library for interacting with Xapian, a full text search engine.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
