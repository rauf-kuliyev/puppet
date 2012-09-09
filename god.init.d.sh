#!/bin/bash
#
# God
#
# chkconfig: - 85 15
# description: start, stop, restart God
#
 
RETVAL=0
 
case "$1" in
    start)
      /usr/bin/god -P /var/run/god.pid
      /usr/bin/god load /etc/god/*.conf
      RETVAL=$?
ln -sf /var/lib/puppet/ssl/certs/`hostname -f`.pem /var/lib/puppet/ssl/certs/puppetmaster.pem
ln -sf /var/lib/puppet/ssl/private_keys/`hostname -f`.pem /var/lib/puppet/ssl/private_keys/puppetmaster.pem
  ;;
    stop)
      kill `cat /var/run/god.pid`
      RETVAL=$?
  ;;
    restart)
      kill `cat /var/run/god.pid`
      /usr/bin/god -P /var/run/god.pid
      /usr/bin/god load /etc/god/*.conf
      RETVAL=$?
  ;;
    status)
      RETVAL=$?
  ;;
    *)
      echo "Usage: god {start|stop|restart|status}"
      exit 1
  ;;
esac
 
exit $RETVAL
