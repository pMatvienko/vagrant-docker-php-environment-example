# -*- mode: ruby -*-
# vi: set ft=ruby :

#REQUIRED:
#vagrant plugin install vagrant-hostsupdater

#Vagrantfile API/syntax version. Don't touch unless you know what you're doing!

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.provider "virtualbox" do |vb|
        vb.customize [
          "modifyvm", :id,
          "--memory", 2048
        ]
        vb.customize [
          "modifyvm", :id,
          "--cpus", 2
        ]
    end


    config.vm.synced_folder ".", "/vagrant"

    config.vm.network :private_network, ip: "192.168.3.12"
    config.vm.hostname = "docker"
    config.hostsupdater.aliases = ["phpserver.int", "docker.int"]


    config.vm.provision "shell", path: "./vagrant/set-up.sh"
#    config.vm.provision "shell", path: "./vagrant/run-env.sh"
end
