class minecraft {
  file {'/opt/minecraft':
  ensure => directory,
  }
  file {'/opt/minecraft/minecraft_server.jar':
  ensure => file,
  source => 'https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar',
  }
#  package {'java':
#    ensure => present,
#  }
  java::oracle { 'jdk6' :
    ensure  => 'present',
    version => '6',
    java_se => 'jdk',
  }
  file {'/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
  ensure => file,
  source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
    ensure => running,
    enable => true,
  }
}
