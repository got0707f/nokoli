#!/bin/sh
if [ ! -f UUID ]; then
  UUID="99996194-5d76-4b5f-9da7-3830f0d8f9b7"
fi
if [ ! -f UUID ]; then
  UUID="fa5d55e7-ea8f-4ddd-b39d-7dd4b3a2f03b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

