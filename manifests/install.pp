# == Class: base::install
#
# Install the base packages on the system.
#
class base::install {

  ensure_packages($base::packages)

  # Ensure we start off with our system up to date.
  exec { "update-packages":
    path        => ["/usr/bin"],
    command     => "yum update -y",
    refreshonly => true,
    subscribe   => Package[$base::packages],
  }
  
}
