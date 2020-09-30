Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  # config.vm.network :private_network, ip: "192.168.33.100"
  config.vm.network :forwarded_port, guest: 3306, host: 4000, host_ip:"127.0.0.1"
  config.vm.hostname = "mer"
  config.vm.provider "virtualbox" do |v|
    v.name = "mer"
  end

  config.vm.provision "shell", path: "script.sh"
end


