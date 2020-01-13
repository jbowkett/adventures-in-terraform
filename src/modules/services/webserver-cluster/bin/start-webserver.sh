#!/bin/bash

cat > index.html <<EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}:${db_port}</p>
EOF
echo "<p>Creation time: `date`</p>" >> index.html

nohup busybox httpd -f -p "${server_port}" &