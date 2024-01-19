The initial-* containers must be built by root due to debootstrap.
They also need a TMPDIR which is not mounted nodev

The rest of the containers can be built by non-root users.
Use
apptainer build -B /mirrors/ubuntu --fakeroot ...
