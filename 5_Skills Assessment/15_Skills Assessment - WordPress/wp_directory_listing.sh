#!/bin/bash
curl -s -X GET http://blog.$domain/wp-content/plugins$1 | html2text
curl -s -X GET http://blog.$domain/wp-content/plugins$1 | html2text | grep flag

