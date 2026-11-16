# NAICS Lookup API - PHP Package

NAICS Lookup is a NAICS code lookup and search API for the 2022 North American Industry Classification System. Look up one code or up to 500 at once, or search by keyword, and get the title, description, level, parent, hierarchy and children, while paid plans add the SBA small-business size standard, the Census index terms, cross-references and the 2017 concordance.

## Installation

Install via Composer:

```bash
composer require apiverve/naicslookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Naicslookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'code' => '541511',
    'search' => 'software publisher',
    'level' => 6,
    'details' => true,
    'limit' => 10
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Naicslookup\Client;
use APIVerve\Naicslookup\Exceptions\APIException;
use APIVerve\Naicslookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['code' => '541511', 'search' => 'software publisher', 'level' => 6, 'details' => true, 'limit' => 10]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/naicslookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/naicslookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/naicslookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
