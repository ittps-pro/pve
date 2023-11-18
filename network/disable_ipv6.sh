
config="/etc/sysctl.d/disable-ipv6.conf"
options=("net.ipv6.conf.default.disable_ipv6" "net.ipv6.conf.all.disable_ipv6")


echo ${options[@]}
