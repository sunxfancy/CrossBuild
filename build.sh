docker run -it --rm -v $(pwd):/workdir -e CROSS_TRIPLE=windows  multiarch/crossbuild make windows

docker run -it --rm -v $(pwd):/workdir -e CROSS_TRIPLE=linux  multiarch/crossbuild make linux

docker run -it --rm -v $(pwd):/workdir -e CROSS_TRIPLE=osx  multiarch/crossbuild make osx
