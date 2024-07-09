#!/bin/bash
sudo apt-get update -y
sudo hostnamectl set-hostname Docker-Machine
cd /home/ubuntu
#sudo echo 'export PS1="\[\e[36m\]\u\[\e[m\]@\[\e[32m\]\h-\[\e[34m\]\W:\[\e[31m\]\\$\[\e[m\] "' >> ~/.bashrc 

cat << EOF >> /home/ubuntu/.bashrc
export PS1="\[\e[36m\]\u\[\e[m\]@\[\e[32m\]\h-\[\e[34m\]\W:\[\e[31m\]\\$\[\e[m\]"
EOF

sudo apt-get install docker.io -y
sudo systemctl start docker       #==> init sistem docker calistiriyor.
sudo systemctl enable docker      #==> sen bu bilgisayari her build ettigine bu docker da calistir.
sudo usermod -aG docker ubuntu  #==> kullaniciyi docker grubuna ekliyoruz ki kullanabilsin.
sudo su - ubuntu   #==> gurubu güncelliyorum sudo olmadan komut erebilecegiz.

# install docker-compose  5-ders icin
sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose

# file repodan cekmek icin
sudo apt-get install git -y

sudo apt-get install tree -y


cat << EOF > /home/ubuntu/.vimrc

set number          " Satır numaralarını göster
set ruler           " İlgili satır numarasını status line'da gösterir
set laststatus=2    " Status line'ı her zaman göster
EOF

sudo su -




