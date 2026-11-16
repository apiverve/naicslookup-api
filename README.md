# [NAICS Lookup API](https://apiverve.com/marketplace/naicslookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

NAICS Lookup is a NAICS code lookup and search API for the 2022 North American Industry Classification System. Look up one code or up to 500 at once, or search by keyword, and get the title, description, level, parent, hierarchy and children, while paid plans add the SBA small-business size standard, the Census index terms, cross-references and the 2017 concordance.

The NAICS Lookup API provides a simple, reliable way to integrate naics lookup functionality into your applications. Built for developers who need production-ready naics lookup capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/naicslookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/naicslookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/naicslookup)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.NAICSLookup)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-naicslookup/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_naicslookup)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/naicslookup)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_naicslookup)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callNAICSLookupAPI() {
    try {
        const params = new URLSearchParams({
            code: '541511',
            search: 'software publisher',
            level: 6,
            limit: 10
        });

        const response = await fetch(`https://api.apiverve.com/v1/naicslookup?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callNAICSLookupAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/naicslookup?code=541511&search=software%20publisher&level=6&limit=10" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/naicslookup
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/naicslookup) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.NAICSLookup
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.NAICSLookup) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-naicslookup
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-naicslookup/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_naicslookup
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_naicslookup) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/naicslookup
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/naicslookup) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_naicslookup
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_naicslookup) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:naicslookup-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/naicslookup-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [NAICS Lookup API](https://apiverve.com/marketplace/naicslookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/naicslookup](https://docs.apiverve.com/ref/naicslookup)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The NAICS Lookup API is commonly used for:

- **Web Applications** - Add naics lookup features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with naics lookup capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the NAICS Lookup API:

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

---

## Support & Community

- 🏠 **API Home**: [NAICS Lookup API](https://apiverve.com/marketplace/naicslookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
