#!/bin/sh
if [ ! -f UUID ]; then
   UUID="99039716-48b7-45d6-9777-59e4c9606809"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

