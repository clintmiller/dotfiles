if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

if [ -d "/opt/local/bin" ] ; then
  export PATH=$PATH:/opt/local/bin:/opt/local/sbin
fi
