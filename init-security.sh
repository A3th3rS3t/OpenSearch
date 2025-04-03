#!/bin/bash
# This will run securityadmin to initialize the security plugin.

while ! docker compose exec opensearch bash -c "chmod +x plugins/opensearch-security/tools/securityadmin.sh && bash plugins/opensearch-security/tools/securityadmin.sh -cd plugins/opensearch-security/securityconfig -icl -nhnv -cacert config/certs/ca/ca.pem -cert config/certs/ca/admin.pem -key config/certs/ca/admin.key -h localhost"; do sleep 1; done