class cloudinit::install inherits cloudinit {
	package { "cloud-init":
		ensure => present
	}
}
