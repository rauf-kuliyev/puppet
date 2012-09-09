puppet
======

Random puppet thoughts

create god
http://projects.puppetlabs.com/projects/1/wiki/using_unicorn
 -- install gem from epel repository. Enable it in /etc/yum.repos.d/epel.repo  
 -- gem install rake unicorn
 -- needs gcc, glibc-devel, make
 -- create init.d script for god - http://www.justinbritten.com/work/2009/05/god-initd-script-for-centos/
 -- change starting number from S85 to S82 in /etc/rc3.d/ to start god before nginx
 -- god init script will also make symlink to new ssl certs as puppetmaster.pem

