whatis([[Description: Wrapper for EasyBuild for building using singularity container]])

help([[
This module provides a small wrapper script for EasyBuild for building using
singularity container on the cvmfs master tree.
]])

local root = "/hpc2n/eb/software/eb_builder/develop"

conflict("eb_builder")

if os.getenv("EBUSER") == nil or os.getenv("EBUSER") == "" then
    LmodError("EBUSER must be set before loading eb_builder/develop\n")
else

    devel_path=pathJoin(os.getenv("HOME"), os.getenv("EBUSER"), "eb-develop", "modules")
    if isDir(devel_path) then
        prepend_path("MODULEPATH", devel_path)
    else
        LmodError(devel_path, "does not exist\n")
    end

    if not isloaded("EasyBuild-develop") then
        load("EasyBuild-develop")
    end

    if not isloaded("singularity") then
        load("singularity")
    end

    prepend_path("PATH", pathJoin(root, "bin"))

end
-- Built by hand
