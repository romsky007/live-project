#/bin/baash
#
# To create project:
#
# gcloud projects create live-project --name="Classify Customer Feedback"
#
#########################################################################

PROJECT_ID=`gcloud projects list | grep live | awk '{print $1}'`

if [ -z "$PROJECT_ID" ]
then
      echo "Project does not exist. Exiting."
      exit 0
fi

# Creating topics...
echo "Creating topics..."
gcloud pubsub topics create feedback-created
gcloud pubsub topics create feedback-classified

# List topics ...
echo "List topics ..."
gcloud pubsub topics list

# Show project details
echo
echo
gcloud projects describe $PROJECT_ID
