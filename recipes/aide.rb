
package 'aide'

cookbook_file '/etc/aide.conf' do
    source 'aide.conf'
    mode '0600'
    owner 'root'
    group 'root'
end

cookbook_file '/etc/cron.daily/aide' do
    source 'aide'
    mode '0755'
    owner 'root'
    group 'root'
end

execute 'create_aide_config' do
    command '/usr/sbin/aide --init'
    creates '/var/lib/aide/aide.db.new.gz'
end

execute 'copy_aide_config' do
    command 'cp /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz'
    creates '/var/lib/aide/aide.db.gz'
end

