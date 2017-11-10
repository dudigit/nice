This example build configuration installs and configures CentOS 7 x86_64 minimal using Ansible, and then generates two Vagrant box files, for:

  - VirtualBox

The example can be modified to use more Ansible roles, plays, and included playbooks to fully configure (or partially) configure a box file suitable for deployment for development environments.

## Requirements

The following software must be installed/present on your local machine before you can use Packer to build the Vagrant box file:

  - [Packer](http://www.packer.io/)
  - [Vagrant](http://vagrantup.com/)
  - [VirtualBox](https://www.virtualbox.org/) (if you want to build the VirtualBox box)
  - [Ansible](http://docs.ansible.com/intro_installation.html)

## Usage

Make sure all the required software (listed above) is installed, then cd to the directory containing this README.md file, and run:

    $ packer build centos7.json

After a few minutes, Packer should tell you the box was generated successfully.

If you want to only build a box for one of the supported virtualization platforms (e.g. only build the VMware box), add `--only=vmware-iso` to the `packer build` command:

    $ packer build --only=virtualbox-iso centos7.json

## Running the box (VirtualBox) 

There's an included Vagrantfile that allows quick testing of the built Vagrant boxes. From this same directory, run one of the following commands after building the boxes:

    $ vagrant up virtualbox --provider=virtualbox

## Connecting the box (VirtualBox)

Connecting via ssh
  
    $ vagrant ssh virtualbox

## All creditis for

https://www.jeffgeerling.com/blog/server-vm-images-ansible-and-packer

## License

MIT license.
