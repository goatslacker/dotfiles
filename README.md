# The . files

    cd ~/
    git clone git://github.com/goatslacker/dotfiles.git
    git submodule init && git submodule update

    git submodule foreach git pull


powerline

    cd powerline && python setup.py install
