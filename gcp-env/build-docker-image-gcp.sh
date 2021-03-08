#/bin/baash
#
# Build and deploy image to GCP.
# https://cloud.google.com/run/docs/quickstarts/build-and-deploy
#
#########################################################################

#
# 
gcloud auth login
gcloud builds submit --tag gcr.io/live-project-306821/trigger-func
