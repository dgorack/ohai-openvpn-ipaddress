provide 'ipaddress'
require_plugin "#{os}::network"

if network['interfaces']['tun0']
	network['interfaces']['tun0']['addresses'].each do |ip, params|
		if params['family'] == ('inet')
			Chef::Log.info("ohai-plugin - forcing :ipaddress to #{ip}")
			ipaddress ip
		end
	end
else
	Chef::Log.debug('ohai-plugin - tun0 not detected')
end