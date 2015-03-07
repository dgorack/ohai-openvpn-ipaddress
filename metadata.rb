name             'ohai-openvpn-ipaddress'
maintainer       'Dru Goradia'
maintainer_email 'dgorack@users.noreply.github.com'
license          'Apache 2.0'
description      'Ohai plugin that detects OpenVPN tun0 as ipaddress'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe 'insight-server::ohai-plugin', 'Installs plugin to detect tun0 IP address'

attribute 'ohai/plugin_path',
	:display_name	=> 'Ohai Plugin Path',
	:description  	=> 'Distribute plugins to this path',
	:type 			=> 'string',
	:required		=> 'optional',
	:default		=> '/etc/chef/ohai_plugins'

attribute 'ohai/plugins',
	:display_name	=> 'Ohai Plugin Sources',
	:description  	=> 'Read plugins from these cookbooks and paths',
	:type 			=> 'hash',
	:required		=> 'optional',
	:default		=> {'ohai' => 'plugins'}