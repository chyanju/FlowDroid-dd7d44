#!/bin/bash

# for i in $(find /Users/joseph/Desktop/UCSB/21spring/apks/play/encrypted/ -iname '*.apk' ); 
# do
#     echo "Analyzing..... $i"
#     java -jar soot-infoflow-cmd/target/soot-infoflow-cmd-jar-with-dependencies.jar \
#     -a $i \
#     -p /Users/joseph/Library/Android/sdk/platforms/ \
#     -s /Users/joseph/Desktop/UCSB/21spring/FlowDroid/soot-infoflow-android/EmptySourcesAndSinks.txt \
#     > $i.log 2>&1
# done

for i in $(find /Users/joseph/Desktop/UCSB/21spring/apks/tencent/plain/ -iname '*.apk' ); 
do
    echo "Analyzing..... $i"
    java -jar soot-infoflow-cmd/target/soot-infoflow-cmd-jar-with-dependencies.jar \
    -a $i \
    -p /Users/joseph/Library/Android/sdk/platforms/ \
    -s /Users/joseph/Desktop/UCSB/21spring/FlowDroid/soot-infoflow-android/EmptySourcesAndSinks.txt \
    > $i.log 2>&1
done
