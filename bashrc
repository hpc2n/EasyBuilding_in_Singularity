if [ -f /hpc2n/eb/software/lmod/lmod/init/profile ]; then
    . /hpc2n/eb/software/lmod/lmod/init/profile
    if shopt -q login_shell >/dev/null 2>&1; then
        module use /hpc2n/eb/modules/all/Core
        module add systemdefault
    fi
fi

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
# Need to disable cached loads so eb_builder/develop works
export LMOD_CACHED_LOADS=no
