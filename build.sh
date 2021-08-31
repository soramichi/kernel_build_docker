docker rmi debian:bookworm # delete the base image so that latest version is pulled everytime
docker rmi kernel_build_soramichi
docker build --no-cache ./ -t kernel_build_soramichi
