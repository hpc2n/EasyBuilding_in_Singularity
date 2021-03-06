whatis([[Description: Wrapper for EasyBuild for building using singularity container]])

help([[
This module provides a small wrapper script for EasyBuild for building using
singularity container on the cvmfs master tree.
]])

local root = "/hpc2n/eb/software/Core/eb_builder/default"

conflict("eb_builder")

if not isloaded("EasyBuild") then
    load("EasyBuild")
end

prepend_path("PATH", pathJoin(root, "bin"))

-- Built by hand
