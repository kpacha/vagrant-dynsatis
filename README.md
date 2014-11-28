vagrant-dynsatis
----------------

Create a devel/testing environment for dynsatis

Usage
-----

Checkout the vagrant-dynsatis repo and start the VM

```
$ git clone https://github.com/kpacha/vagrant-dynsatis.git
$ cd vagrant-dynsatis
$ vagrant up
```

Add the dynsatis hostnames to your `/etc/hosts` file.

```
$ echo '127.0.0.1	dev.dynsatis.local dynsatis.local' | sudo tee -a /etc/hosts > /dev/null
```

And you're ready to work!

Check the environment by browsing http://dev.dynsatis.local:8888 or http://dynsatis.local:8888

Visit [puppet-dynsatis](https://github.com/kpacha/puppet-dynsatis) and [dynsatis](https://github.com/kpacha/dynsatis) for more details
