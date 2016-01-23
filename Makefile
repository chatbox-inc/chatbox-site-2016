server:
	./node_modules/.bin/gulp wintersmith
server2:
	php -S localhost:4040 -t public
dev:
	npm run dev
builds:
	wintersmith build --clean
	gulp sitemap
	zip backup.zip build/ -r
sync:
	aws s3 sync ./build s3://chatbox-inc.com/ --delete --region ap-northeast-1
npm_init:
	npm init;
	npm i gulp gulp-load-plugins gulp-babel gulp-sass \
	    wintersmith node-env-file underscore jquery \
	    --save;