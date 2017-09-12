#!/usr/bin/env bash
set -eo pipefail

chmod +x /root/envset
bash /root/envset
rm /root/envset

cat > /etc/periodic/daily/curator <<EOF
#!/bin/bash
/usr/bin/curator /root/.curator/actions.yml --config /root/.curator/curator.yml
EOF

chmod +x /etc/periodic/daily/curator
crond -f

