class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
  ensure => 'running'
  ensure => 'true'
  }
  ssh_authorized_key {'root@master.puppet.vm':
  ensure => present,
  user => 'root',
  type => 'ssh-rsa',
  key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUvi8JBVx7Vz4dp0Y89XTbe9eBxEM91M+4Unb+mpu23invKBMrmzH5R9r0fcbVAKvGxXB8zl0NLtBIO5Xm2wUBWz+Ip8F/qO5EXleDBze1TvjwiHhfcu0zAwhT28bEL55DVpqi8HNVdquuKnEY7SK99SzxYI0iVHDmEpwqS9gUowvPwLPFnbghwbXWD9pBbk42wyvvSHF2Ga3s0etAoCyt9vTcWSw6N2u0BsT73M3eCzqA4w9sMMb7WZJ3iBbdHGDmCoDqWUNeUefgbePv/WEyJrXVh+d04iTVR5B9WsxZX88eID8UgI//Ca8qJCvQULJ39Zl9OE7vY5Ujv1rQFKvV',
  }
}
