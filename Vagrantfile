# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
    # 基础box
    config.vm.box = "debian/jessie64"

    config.vm.hostname = "dev"

    # 禁止检查更新
    config.vm.box_check_update = false

    config.vm.provider "virtualbox" do |vb|
        # 硬件配置
        vb.memory = 512
        vb.cpus = 2
    end

    # 分配IP
    config.vm.network "private_network", ip: "192.168.33.33"

    # 默认文件同步 host [.] => guest [/vagrant]

    # 初始化环境
    config.vm.provision "shell", path: "./scripts/env.sh"
    config.vm.provision "shell", path: "./scripts/tools.sh"
end
