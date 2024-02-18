register /Users/delong/.cargo/bin/nu_plugin_dns  {
  "sig": {
    "name": "dns query",
    "usage": "Perform a DNS query",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": {
      "name": "name",
      "desc": "DNS record name",
      "shape": {
        "OneOf": [
          "String",
          {
            "List": "Binary"
          }
        ]
      },
      "var_id": null,
      "default_value": null
    },
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "server",
        "short": "s",
        "arg": "String",
        "required": false,
        "desc": "Nameserver to query (defaults to system config or 8.8.8.8)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "protocol",
        "short": "p",
        "arg": "String",
        "required": false,
        "desc": "Protocol to use to connect to the nameserver: UDP, TCP. (default: UDP)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "type",
        "short": "t",
        "arg": "Any",
        "required": false,
        "desc": "Query type",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "class",
        "short": null,
        "arg": "Any",
        "required": false,
        "desc": "Query class",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "code",
        "short": "c",
        "arg": null,
        "required": false,
        "desc": "Return code fields with both string and numeric representations",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "dnssec",
        "short": "d",
        "arg": "String",
        "required": false,
        "desc": "Perform DNSSEC validation on records. Choices are: \"none\", \"strict\" (error if record has no RRSIG or does not validate), \"opportunistic\" (validate if RRSIGs present, otherwise no validation; default)",
        "var_id": null,
        "default_value": null
      },
      {
        "long": "dns-name",
        "short": "n",
        "arg": "String",
        "required": false,
        "desc": "DNS name of the TLS certificate in use by the nameserver (for TLS and HTTPS only)",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Network"
  },
  "examples": [
    {
      "example": "dns query google.com",
      "description": "simple query for A / AAAA records",
      "result": null
    },
    {
      "example": "dns query --type CNAME google.com",
      "description": "specify query type",
      "result": null
    },
    {
      "example": "dns query --type [cname, mx] -c google.com",
      "description": "specify multiple query types",
      "result": null
    },
    {
      "example": "dns query --type [5, 15] -c google.com",
      "description": "specify query types by numeric ID, and get numeric IDs in output",
      "result": null
    },
    {
      "example": "'google.com' | dns query",
      "description": "pipe name into command",
      "result": null
    },
    {
      "example": "['google.com', 'amazon.com'] | dns query",
      "description": "pipe lists of names into command",
      "result": null
    },
    {
      "example": "[{name: 'google.com', type: 'A'}, {name: 'amazon.com', type: 'A'}] | dns query",
      "description": "pipe table of queries into command (ignores --type flag)",
      "result": null
    }
  ]
}

register /Users/delong/.cargo/bin/nu_plugin_net  {
  "sig": {
    "name": "net",
    "usage": "List network interfaces",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Experimental"
  },
  "examples": []
}

register /Users/delong/.cargo/bin/nu_plugin_qr_maker  {
  "sig": {
    "name": "to qr",
    "usage": "create qr code from given text. (to convert records into qr you must use `to json` before using `to qr`)",
    "extra_usage": "",
    "search_terms": [],
    "required_positional": [],
    "optional_positional": [],
    "rest_positional": null,
    "named": [
      {
        "long": "help",
        "short": "h",
        "arg": null,
        "required": false,
        "desc": "Display the help message for this command",
        "var_id": null,
        "default_value": null
      }
    ],
    "input_output_types": [
      [
        "String",
        "String"
      ]
    ],
    "allow_variants_without_examples": false,
    "is_filter": false,
    "creates_scope": false,
    "allows_unknown_args": false,
    "category": "Conversions"
  },
  "examples": [
    {
      "example": "\"https://google.com\" | to qr",
      "description": "to create qr code just use `to qr`",
      "result": null
    }
  ]
}

