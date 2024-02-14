install:
	bin/composer install

start:
	php -S localhost:8080

test:
	# cd tst && ../vendor/bin/phpunit
	./vendor/bin/phpunit tst

lint:
	- "vendor/bin/phpmd" ./tst/ ansi cleancode,codesize,controversial,design,naming,unusedcode
	- "vendor/bin/phpcs" ./tst/Filtertest.php
	- find . -type f -name '*.php' -exec php -l {} \;