#/bin/baash

PROJECT_ID=`gcloud projects list | grep live | awk '{print $1}'`

if [ -z "$PROJECT_ID" ]
then
      echo "Project does not exist. Exiting."
      exit 0
fi

# Deleting topics...
echo "Deleting topics..."
gcloud pubsub topics delete feedback-created
gcloud pubsub topics delete feedback-classified

# 
echo "List topics ..."
gcloud pubsub topics list

# Show project details
echo
echo
gcloud projects describe $PROJECT_ID

# Delete project
# echo "Deleting project live-project ..."
# gcloud projects delete $PROJECT_ID
