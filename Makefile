
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile
	$(MAKE) -f objs/Makefile manpage

install:
	$(MAKE) -f objs/Makefile install

upgrade:
	/Users/bitrho/code/nginx-1.8.0/build/nginx -t

	kill -USR2 `cat /Users/bitrho/code/nginx-1.8.0/build/nginx.pid`
	sleep 1
	test -f /Users/bitrho/code/nginx-1.8.0/build/nginx.pid.oldbin

	kill -QUIT `cat /Users/bitrho/code/nginx-1.8.0/build/nginx.pid.oldbin`
