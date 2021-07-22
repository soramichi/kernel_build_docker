docker rmi debian:bullseye # delete the bullseye image so that latest version is pulled everytime
docker rmi kernel_build_soramichi
docker build --no-cache ./ -t kernel_build_soramichi
