class cloudinit::config inherits cloudinit {
	file { $hosts_file:
		content => template("cloudinit/hosts_debian.erb"),
		owner => root,
		group => root,
		mode => 0644
	}
}
