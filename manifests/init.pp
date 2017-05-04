class cloudinit (
	$hosts_file = $cloudinit::params::hosts_file,
	$hosts = $cloudinit::params::hosts
) inherits cloudinit::params {
	validate_string($hosts_file)
	validate_hash($hosts)
	class { "cloudinit::install": }->
	class { "cloudinit::config": }
}
