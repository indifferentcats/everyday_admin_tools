# Everyday Admin Tools

A few tools can be added to an admin's shell by installing them from
Python PIP.  Virtual environments are the standard method of getting
these kinds of commands installed in a session, but virtual environments
mess with the shell in ways that some tools or remote sessions may
not appreciate.

If you have a local bin folder in your path (e.g. `~/.local.bin`) then
this will install links to the commands in the virtual environment
so that they can be run from any shell.  No need to activate the
environment.

## Current Commands

* awscurl
* cfn-lint
* jsonpatch, jsondiff, jsonschema, and jsonpointer

## Set Up

1. Make the directory `~/.local/bin` and add it to your permanent path
2. Run the `./install.sh` - If the local bin folder doesn't exist, this will give you example commands to get it set up

## Adding New Commands

1. Amend the `requirementst.txt` with the new module
2. Look for the added commands in the `bin/` folder created during previous setups
3. Add the new commands to the top of `install.txt`
4. Re-run `./install.sh`
5. If this is your own copy of the repository, 
    1. Make a branch
    2. Change the origin for the branch to be your repository
    3. Commit the changes to your branch
    4. Optionally, submmit a pull request on the original repository
