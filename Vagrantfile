Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe("postgresql")
    chef.add_recipe("git")
    chef.add_recipe("java")
    chef.add_recipe("emacs")
    chef.add_recipe("leiningen")
    chef.add_recipe("emacs-plugins")
  end
end
