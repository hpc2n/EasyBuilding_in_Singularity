# EasyBuilding_in_Singularity
Building with EasyBuild using a "clean room" singularity container.

This is HPC2Ns setup for using a "clean room" singularity container to
build software using EasyBuild and installing into a CVMFS based tree.

We use a single user for building, "easybuild".

The eb_builder module comes in two versions, default and develop.
They simply loads the correct version of EasyBuild and adds the eb wrapper
script for starting the container first in PATH.

Before using the develop tree of EasyBuild each person creates their own
directory in ~easybuild and installs the develop version of EasyBuild in
~easybuild/<user>/eb-develop.

To use the develop version you have to set EBUSER to <user> before
loading the eb_builder/develop module.

Then use "eb" just like you would normally do...
