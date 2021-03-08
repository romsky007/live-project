#/bin/baash
#
# Build image and run it on local docker instance. 
#
#########################################################################

docker build -t odessa007/trigger-func .
docker images 
docker run -p 49160:8080 -d  odessa007/trigger-func

