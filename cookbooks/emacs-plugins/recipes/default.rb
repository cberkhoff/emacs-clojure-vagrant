git "/home/vagrant/.emacs.d" do
  repository "git://github.com/overtone/live-coding-emacs.git"
  action :checkout
  reference "master"
  user "vagrant"
  group "vagrant"
end

execute "swank" do
  command "lein plugin install swank-clojure 1.4.2"
  action :run
  user "vagrant"
end