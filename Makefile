all: windows linux osx

windows:
	docker run -it --rm -v $(CURDIR):/workdir -e CROSS_TRIPLE=windows  multiarch/crossbuild make docker-windows
linux:
	docker run -it --rm -v $(CURDIR):/workdir -e CROSS_TRIPLE=linux  multiarch/crossbuild make docker-linux
osx:
	docker run -it --rm -v $(CURDIR):/workdir -e CROSS_TRIPLE=osx  multiarch/crossbuild make docker-osx

docker-linux:
	-mkdir linux
	-cd linux && cmake .. && make

docker-windows:
	-mkdir windows
	-cd windows && cmake -DCMAKE_SYSTEM_NAME=Windows .. && make

docker-osx:
	-mkdir osx
	-cd osx && cmake .. && make

clean:
	-rm -rf linux/ windows/ osx/

