if [ -z $LOGFILES_PATH ] ||
   [ -z $LOGSERVICE_HOST ]; then
  echo "Environment variable(s) not set"
  exit 1
fi
cp /etc/rsyslog.conf.tmpl /etc/rsyslog.conf
sed -i "s|File=\"\"|File=\"$LOGFILES_PATH\"|g" /etc/rsyslog.conf
sed -i "s|*.* @:514|*.* @$LOGSERVICE_HOST:514|g" /etc/rsyslog.conf
exec "$@"
