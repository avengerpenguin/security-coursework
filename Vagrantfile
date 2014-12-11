# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "chef/debian-7.4"
  config.vm.provision "shell", inline: "sudo aptitude update"

  config.vm.define "ldap" do |web|
    config.vm.provision "shell", inline: "sudo aptitude install -y slapd"
  end

  config.vm.define "desktop" do |desktop|
    config.vm.provision "shell", inline: "sudo aptitude install -y ntpdate libpam-oath oathtool"
    config.vm.provision "shell", inline: "sudo adduser testuser --disabled-password --gecos ''"
  end

  config.vm.define "web" do |web|
    config.vm.provision "shell", inline: "sudo aptitude install -y apache2"
  end

end
