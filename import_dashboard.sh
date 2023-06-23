#!/bin/bash

sleep 10
curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $(cat /var/lib/grafana/admin.password)" \
  --data-binary @/etc/grafana/dashboards/dashboard.json \
  http://192.168.232.208:3000/api/dashboards/db

