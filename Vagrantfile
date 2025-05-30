# Master skripti -> saltin asennus
$master_script = <<MASTER_SCRIPT
set -o verbose
sudo apt-get update
sudo apt-get install -y curl tree
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp
sudo curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources
sudo apt-get update
sudo apt-get install -y salt-master
sudo systemctl restart salt-master.service
MASTER_SCRIPT

# Minion skripti-> saltin asennus ja yhdistäminen Masteriin
$minion_script = <<MINION_SCRIPT
set -o verbose
sudo apt-get update
sudo apt-get install -y curl tree
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://packages.broadcom.com/artifactory/api/security/keypair/SaltProjectKey/public | sudo tee /etc/apt/keyrings/salt-archive-keyring.pgp
sudo curl -fsSL https://github.com/saltstack/salt-install-guide/releases/latest/download/salt.sources | sudo tee /etc/apt/sources.list.d/salt.sources
sudo apt-get update
sudo apt-get install -y salt-minion
echo -e 'master: 192.168.12.101' |sudo tee /etc/salt/minion
sudo systemctl restart salt-minion.service
MINION_SCRIPT

# Vagrant pääkonfiguraatio
Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"

  # Master
  config.vm.define "master" do |master|
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.12.101"
    master.vm.synced_folder "salt/", "/srv/salt", owner: "root", group: "root"
    master.vm.provision "shell", inline: $master_script

    master.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
  end
end

  # Slave (minion)
  config.vm.define "slave", primary: true do |slave|
    slave.vm.hostname = "slave"
    slave.vm.network "private_network", ip: "192.168.12.102"
    slave.vm.provision "shell", inline: $minion_script
  end
end