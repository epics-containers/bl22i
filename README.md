Beamline BL22I Non Crystalline Diffraction
==========================================

This repository contains a specification of the IOC instances
running on the I22 beamline at **Diamond Light Source**.


Setting up your environment to use BL22I
----------------------------------------

Inside DLS you can access this beamline by setting up your environment
as follows:

1. For convenience you will need `~/.local/bin` in your path. To do this
   edit the file `~/.bash_profile` and add the following line at the end:

   ```bash
   export PATH="$PATH:~/.local/bin"
   ```

1. Download and apply the project's environment file using the commands below.

   ```bash
   cd /tmp
   curl -o ~/.local/bin/bl22i https://raw.githubusercontent.com/epics-containers/bl22i/main/environment.sh?token=$(date +%s)
   . ~/.bash_profile # adds ~/.local/bin to path
   . bl22i
   ```

   You will be asked for your cluster credentials which are the same as your
   linux login. Note that if you have not used this cluster before you may need
   to ask the cloud team for access. To do so
   [use this form](https://jira.diamond.ac.uk/servicedesk/customer/portal/2/create/92)
   and ask for access to namespace `i22-iocs` on cluster `k8s-i22`.

   After logging out and back in again to pick up your profile changes you can
   then reload the bl22i environment with the following command:

   ```bash
   . bl22i
   ```

1. Now if everything is working you should be able to see the IOC instances
   running on the kubernetes cluster as follows:

   ```bash
   $ ec ps
   IOC_NAME          VERSION     STATE     RESTARTS   STARTED
   bl22i-ea-ioc-03   2023.10.2   Running   0          2023-10-21T19:10:33Z
   ```

1. You can also take a look at what other commands are available:

   ```bash
   ec --help
   ec ioc --help
   ec dev --help
   ```

1. For a visual interface to the ioc namespace on the cluster you can use the
   kubernetes dashboard at this URL:

   https://k8s-i22-dashboard.diamond.ac.uk/#/pod?namespace=i22-iocs

