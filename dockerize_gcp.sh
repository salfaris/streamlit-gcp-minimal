# PROJECT_NAME="your-GCP-project-name"
PROJECT_NAME="streamlit-gcp-mvp"
APP_NAME="mvp"

# The `IMAGE_NAME` starts with `eu.gcr.io` which specifies GCP Artifact Registry
# as the registry host. Docker will know how to handle this when you run `docker push`.
REGISTRY_HOST="pkg.dev"
IMAGE_NAME="$REGISTRY_HOST/$PROJECT_NAME/$APP_NAME"

# # Not M1 mac
# docker build -t $IMAGE_NAME .

# M1 mac
docker build -t $IMAGE_NAME . --platform linux/amd64

docker push $IMAGE_NAME