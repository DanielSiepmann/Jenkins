#!/bin/bash
if [ -d "test-results" ]; then
    rm test-results
fi

mkdir test-results
/var/jenkins_home/bin/phpbins/phpcs --report=checkstyle --report-file=test-results/checkstyle-phpcs.xml

exit 0
