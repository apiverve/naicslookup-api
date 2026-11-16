# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_naicslookup"
  spec.version       = "1.2.6"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "NAICS Lookup API - Ruby Client"
  spec.description   = "NAICS Lookup is a NAICS code lookup and search API for the 2022 North American Industry Classification System. Look up one code or up to 500 at once, or search by keyword, and get the title, description, level, parent, hierarchy and children, while paid plans add the SBA small-business size standard, the Census index terms, cross-references and the 2017 concordance."
  spec.homepage      = "https://apiverve.com/marketplace/naicslookup?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/naicslookup-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/naicslookup"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
