# VSCode Devcontainers for C++
Create and run C++ devcontainers using various OS' and C++ tool chains

## Build Docker Images
Run `./create-images.sh` to generate the docker images.

Each env is named as `cppdev-<osname>`, for example:
1. `cppdev-ubuntu` (default)
1. `cppdev-centos`
1. `cppdev-mariner`

The script tags the default image as `cppdev`.

## Open the devcontainer
1. Open the project is VSCode (may only be necessary one time).
1. Select `Ctrl`+`Shift`+`P` Dev Containers: Reopen in Container

### Run or debug the application
1. Run `./compile.sh -f` to perform a full build
1. Run `./compile.sh` to perform an incremental build
1. Select the run or debug configuration

## Change the devcontainer environment
The docker image loaded by `devcontainer.json` is named `cppdev:latest`. Use `docker tag` to change the default environment, for example:
```
docker tag cppdev-centos cppdev
```
After switching the environment the devcontainer must be rebuilt by selecting:

`Ctrl`+`Shift`+`P` Dev Containers: Rebuild without Cache and Reopen in Container


