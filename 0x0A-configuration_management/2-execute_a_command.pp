#!/usr/bin/env bash
# Puppet script that kills a process

exec { 'kill-process':
  command => '/usr/bin/pkill -f killmenow',
  path    => ['/bin', '/usr/bin'],
  onlyif  => '/usr/bin/pgrep -f killmenow',
}
