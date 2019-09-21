ips=(
	"# -- Ngrok --"
	"216.58.223.206 dns.google.com"
	"52.216.130.253 s3.amazonaws.com"
	"52.15.79.231 tunnel.us.ngrok.com"
	"54.173.32.212 update.equinox.io"
	"# -- Ngrok --"
)

mount -o rw,remount /system
for ip in "${ips[@]}"; do
	echo $ip >> /system/etc/hosts
done
mount -o ro,remount /system
