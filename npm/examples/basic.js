/**
 * Basic Example - NAICS Lookup API
 *
 * This example demonstrates how to use the NAICS Lookup API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const naicslookupAPI = require('../index.js');

// Initialize the API client
const api = new naicslookupAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
var query = {
  code: "541511",
  search: "software publisher",
  level: 6,
  details: false,
  limit: 10
};

// Make the API request using callback
console.log('Making request to NAICS Lookup API...\n');

api.execute(query, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});
