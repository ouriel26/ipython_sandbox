RESULT=`ps aux | grep mongod | grep rs6`

if [ "${RESULT:-null}" = null ]; then
    echo "not running rs6"
    mongod --config /home/hduser/mongodb/conf/rs6.conf
else
    echo "running rs6"
fi

RESULT=`ps aux | grep mongod | grep rs7`

if [ "${RESULT:-null}" = null ]; then
    echo "not running rs7"
    mongod --config /home/hduser/mongodb/conf/rs7.conf
else
    echo "running rs7"
fi

RESULT=`ps aux | grep mongod | grep rs8`

if [ "${RESULT:-null}" = null ]; then
    echo "not running rs8"
    mongod --config /home/hduser/mongodb/conf/rs8.conf
else
    echo "running rs8"
fi
