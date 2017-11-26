## Nice (company) home dev-ops exercise

 

please use the following tools to implement –

 

·         Virtual box, packer, ansible, red-hat

 

Requirements –

 

·         OS level requirements

o   SELinux disabled

o   IPv6 disabled

 

·         Create a Jenkins master server template for installation.

o   The server should be installed with java8 and latest Jenkins

o   Plugins should be also pre-installed, here are the list -

§  Blue-ocean, ldap, git, maven-release

o   The master should include apache-maven for java compilation

o   The master should include git client installation (latest version)

·         Monitoring

o   Install grafana for monitoring Jenkins health and executors or build durations

 

You should use packer for template, ansible / bash / python for configuration and red-hat as OS.

The outcome should be code that implements the requirements. 



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

## All credits for

https://www.jeffgeerling.com/blog/server-vm-images-ansible-and-packer

## License

MIT license.
