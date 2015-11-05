#!/bin/bash

jarFile="/tmp/wepingo-sdb-spark-0.1-SNAPSHOT-jar-with-dependencies.jar"
#sparkArgs="--master yarn-cluster --num-executors 4 --driver-memory 1g --executor-memory 1g --executor-cores 2"
sparkArgs="--master local[2]"
shopName="multimedia.e-leclerc.com"

/usr/hdp/current/spark-client/bin/spark-submit --class com.fr.wepingo.spark.sdb.DistributedSitemapCrawler $sparkArgs $jarFile $shopName
/usr/hdp/current/spark-client/bin/spark-submit --class com.fr.wepingo.spark.sdb.DistributedUrlsCrawler $sparkArgs $jarFile $shopName
/usr/hdp/current/spark-client/bin/spark-submit --class com.fr.wepingo.spark.sdb.DistributedDocumentsScrapper $sparkArgs $jarFile $shopName
/usr/hdp/current/spark-client/bin/spark-submit --class com.fr.wepingo.spark.sdb.DistributedNormalizer $sparkArgs $jarFile $shopName
/usr/hdp/current/spark-client/bin/spark-submit --class com.fr.wepingo.spark.sdb.DistributedReconciliation $sparkArgs $jarFile $shopName
/usr/hdp/current/spark-client/bin/spark-submit --class com.fr.wepingo.spark.sdb.DistributedProductsPersister $sparkArgs $jarFile $shopName
