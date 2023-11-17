#!/usr/bin/env bash
echo $api_token
OTOKEN=#{ENV['api']}


json=$(curl -H "Authorization: Bearer $api_token" -s https://userapi.vdsina.ru/api/v1/server)
arr=$(jq -c '.[]' <<< "$json")
echo $arr

if jq -e '.[] | select(.network)' <<< "$json"; 
then
  echo "JSON array includes network"
fi