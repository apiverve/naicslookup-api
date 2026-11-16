# NAICS Lookup API

NAICS Lookup is a NAICS code lookup and search API for the 2022 North American Industry Classification System. Look up one code or up to 500 at once, or search by keyword, and get the title, description, level, parent, hierarchy and children, while paid plans add the SBA small-business size standard, the Census index terms, cross-references and the 2017 concordance.

[![npm version](https://img.shields.io/npm/v/@apiverve/naicslookup.svg)](https://www.npmjs.com/package/@apiverve/naicslookup)

This is a JavaScript wrapper for the [NAICS Lookup API](https://apiverve.com/marketplace/naicslookup?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/naicslookup
```

Using yarn:
```shell
yarn add @apiverve/naicslookup
```

---

## Configuration

Before using the NAICS Lookup API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The NAICS Lookup API documentation is found here: [https://docs.apiverve.com/ref/naicslookup](https://docs.apiverve.com/ref/naicslookup?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const naicslookupAPI = require('@apiverve/naicslookup');
const api = new naicslookupAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  code: "541511",
  search: "software publisher",
  level: 6,
  details: false,
  limit: 10
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  code: "541511",
  search: "software publisher",
  level: 6,
  details: false,
  limit: 10
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  code: "541511",
  search: "software publisher",
  level: 6,
  details: false,
  limit: 10
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
