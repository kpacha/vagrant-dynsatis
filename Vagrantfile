# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "puppetlabs/trusty32"
  config.vm.box_url = "https://vagrantcloud.com/puppetlabs/boxes/ubuntu-14.04-32-puppet/versions/1/providers/virtualbox.box"
  config.vm.network :forwarded_port, guest: 80, host: 8888

  config.vm.synced_folder "./", "/vagrant", id: "vagrant-root"

  config.vm.provision :shell do |shell|
    shell.path = "shell/librarian-puppet.sh"
    shell.args = "-g"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "site.pp"
    puppet.hiera_config_path = "hiera.yaml"
    puppet.options = "--verbose --environment development"
  end
end
