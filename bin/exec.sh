#!/bin/bash

JMETER_HOME=/usr/local
DATETIME=`date "+%Y%m%d%H%M%S"`
PROFILE=PerformanceTest
TEMP_PROFILE=${PROFILE}-${DATETIME}

cp ./${PROFILE}.jmx ./${TEMP_PROFILE}.jmx

mkdir -p log
mkdir -p report
${JMETER_HOME}/bin/jmeter -n -t ${TEMP_PROFILE}.jmx -l ./log/${TEMP_PROFILE}.log -e -o ./report/${TEMP_PROFILE}

rm ./${TEMP_PROFILE}.jmx
