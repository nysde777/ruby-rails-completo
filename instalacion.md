# Instalacion de herramientas necesarias
Paso 1:
sudo apt update && sudo apt upgrade -y
sudo apt install git -y

Paso 2:
sudo apt install -y curl git build-essential libssl-dev libreadline-dev zlib1g-dev wget

# Instalacion de dependecias faltantes
Paso 1: 
sudo apt install -y libffi-dev libyaml-dev

Paso 2: 
sudo apt install -y autoconf bison libncurses5-dev libgdbm-dev libdb-dev uuid-dev


# Pasos para instalar Ruby
Paso 1:
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

Paso 2:
sudo apt-get install -y build-essential libssl-dev libreadline-dev zlib1g-dev

Paso 3:
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

Paso 4:
rbenv install -l
rbenv install 3.3.8
rbenv global 3.3.8
ruby -v


