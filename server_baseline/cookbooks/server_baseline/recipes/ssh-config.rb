openssh_server node['sshd']['config_file'] do
  Port        1234
  X11Forward  'yes'

  # To specify an option multiple times, use an array
  HostKey     %w(/etc/ssh/ssh_host_dsa_key /etc/ssh/ssh_host_rsa_key)

  # For conditional blocks, use a hash
  Match       'User fred' => { 'X11Forwarding' => 'no' },
              'User john' => {
                'ChrootDirectory' => '/srv',
                'ForceCommand' => 'internal-sftp',
                'AllowTcpForwarding' => 'no',
                'X11Forwarding' => 'no'
              }
end
