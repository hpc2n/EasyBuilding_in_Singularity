# Don't know yet if the HPC2N default bashrc settings should be used.

if [ -f /hpc2n/eb/software/lmod/lmod/init/profile ]; then
    . /hpc2n/eb/software/lmod/lmod/init/profile
    if shopt -q login_shell >/dev/null 2>&1; then
        module use /hpc2n/eb/modules/all/Core
        module add systemdefault
    fi
fi

# This is done in our global bashrc, but since it's not used here...
history_control=ignoredups
HISTCONTROL=ignoredups

# Common shortcuts
alias j=jobs
alias pu=pushd
alias po=popd
alias less='less -e'
alias ls='ls -F'

if [ "$SNIC_RESOURCE" = "abisko" ]; then
    export EASYBUILD_OPTARCH="Intel:mavx"
fi

export SBATCH_ACCOUNT=easybuild
export SQUEUE_FORMAT="%.18i %.9P %.8j %.8u %.2t %.10M %.10L %.6D %R"
export SQUEUE_ALL=1
# Need to disable this so eb_builder/develop works
export LMOD_CACHED_LOADS=no
