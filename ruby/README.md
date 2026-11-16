# NAICS Lookup API - Ruby Gem

NAICS Lookup is a NAICS code lookup and search API for the 2022 North American Industry Classification System. Look up one code or up to 500 at once, or search by keyword, and get the title, description, level, parent, hierarchy and children, while paid plans add the SBA small-business size standard, the Census index terms, cross-references and the 2017 concordance.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_naicslookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_naicslookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_naicslookup'

# Initialize the client
client = APIVerve::Naicslookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  code: "541511",
  search: "software publisher",
  level: 6,
  details: true,
  limit: 10
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ code: "541511", search: "software publisher", level: 6, details: true, limit: 10 })
  puts response["data"]
rescue APIVerve::Naicslookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Naicslookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Naicslookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 1,
    "results": [
      {
        "code": "541511",
        "title": "Custom Computer Programming Services",
        "level": 6,
        "levelName": "national_industry",
        "trilateral": false,
        "description": "This U.S. industry comprises establishments primarily engaged in writing, modifying, testing, and supporting software to meet the needs of a particular customer.",
        "parent": {
          "code": "54151",
          "title": "Computer Systems Design and Related Services"
        },
        "hierarchy": [
          {
            "code": "54",
            "title": "Professional, Scientific, and Technical Services",
            "level": 2,
            "levelName": "sector"
          },
          {
            "code": "541",
            "title": "Professional, Scientific, and Technical Services",
            "level": 3,
            "levelName": "subsector"
          },
          {
            "code": "5415",
            "title": "Computer Systems Design and Related Services",
            "level": 4,
            "levelName": "industry_group"
          },
          {
            "code": "54151",
            "title": "Computer Systems Design and Related Services",
            "level": 5,
            "levelName": "industry"
          },
          {
            "code": "541511",
            "title": "Custom Computer Programming Services",
            "level": 6,
            "levelName": "national_industry"
          }
        ],
        "children": [],
        "sizeStandard": {
          "revenueMillions": 34,
          "employees": null,
          "summary": "$34M average annual receipts",
          "exceptions": []
        },
        "indexTerms": [
          "Applications software programming services, custom computer",
          "Computer program or software development, custom",
          "Computer programming services, custom",
          "Computer software analysis and design services, custom",
          "Computer software programming services, custom",
          "Computer software support services, custom"
        ],
        "crossReferences": [
          {
            "text": "Software design, development, and publishing, or software publishing only--are classified in Industry 513210, Software Publishers;",
            "codes": [
              "513210"
            ]
          },
          {
            "text": "Providing computing infrastructure, data processing services, Web hosting services (except software publishing), and related services, including streaming support services (except streaming distribution services)--are classified in Industry 518210, Computing Infrastructure Providers, Data Processing, Web Hosting, and Related Services; and",
            "codes": [
              "518210"
            ]
          },
          {
            "text": "Planning and designing computer systems that integrate computer hardware, software, and communication technologies, even though such establishments may provide custom software as an integral part of their services--are classified in U.S. Industry 541512, Computer Systems Design Services.",
            "codes": [
              "541512"
            ]
          }
        ],
        "naics2017": [
          {
            "code": "541511",
            "title": "Custom Computer Programming Services"
          }
        ]
      }
    ],
    "notFound": []
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/naicslookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/naicslookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/naicslookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
