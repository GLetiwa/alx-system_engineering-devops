# 2-execute_a_command.pp

exec { 'killmenow_process':
  command => '/usr/bin/pkill -f killmenow',
  path    => ['/bin', '/usr/bin'],
  onlyif  => '/usr/bin/pgrep -f killmenow',
}
