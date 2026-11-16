using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.NAICSLookup
{
    /// <summary>
    /// Query options for the NAICS Lookup API
    /// </summary>
    public class NAICSLookupQueryOptions
    {
        /// <summary>
        /// One NAICS code, or several separated by commas (up to 10 on Free, 500 on paid plans)
        /// </summary>
        [JsonProperty("code")]
        public string Code { get; set; }

        /// <summary>
        /// Keywords to search titles, index terms and descriptions
        /// </summary>
        [JsonProperty("search")]
        public string Search { get; set; }

        /// <summary>
        /// Only return codes at this level when searching (2 to 6 digits)
        /// </summary>
        [JsonProperty("level")]
        public int? Level { get; set; }

        /// <summary>
        /// Include index terms, cross-references and the NAICS 2017 concordance
        /// </summary>
        [JsonProperty("details")]
        public bool? Details { get; set; }

        /// <summary>
        /// Maximum search results (1-50)
        /// </summary>
        [JsonProperty("limit")]
        public int? Limit { get; set; }
    }
}
