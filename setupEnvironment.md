## installing environment
1. install **rbenv** using wget

    wget -q https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer -O- | bash
  
2. ~/.rbenv/bin/rbenv init
2.1 open a new terminal

3. Add binary to paths
- zshrc: echo 'eval "$(/home/dw_corp/.rbenv/bin/rbenv init - zsh)"' | tee -a ~/.zshrc
- bashrc: echo 'eval "$(/home/dw_corp/.rbenv/bin/rbenv init - zsh)"' | tee -a ~/.bashrc

3.2 git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
 

4. rbenv install -l
rbenv install 3.2.2
rbenv versions
renv global 3.2.2
5. first time
gem install bundler
gem install rails
rails new appname


## docker utils
### remove every image on host machine
docker rmi $(docker images -q)
### kill every container on host machine
docker rm -f $(docker ps -aq)
### remove every volume on host machine
docker volume rm $(docker volume ls -q)



## development 
### list of all local installed gems
    gem list

### get ownership of db files
sudo chown -R $USER:$USER tmp/db



