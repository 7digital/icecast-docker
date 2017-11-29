#!/bin/sh

sed -i -e "/<authentication>/,/<\/authentication>/ s/<source-password>hackme<\/source-password>/<source-password>$SOURCE_PASSWORD<\/source-password>/g" /etc/icecast2/icecast.xml
sed -i -e "/<authentication>/,/<\/authentication>/ s/<relay-password>hackme<\/relay-password>/<relay-password>$RELAY_PASSWORD<\/relay-password>/g" /etc/icecast2/icecast.xml
sed -i -e "/<authentication>/,/<\/authentication>/ s/<admin-password>hackme<\/admin-password>/<admin-password>$ADMIN_PASSWORD<\/admin-password>/g" /etc/icecast2/icecast.xml
icecast -c /etc/icecast2/icecast.xml
