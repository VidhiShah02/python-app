# Setup Cloud Run with Terraform

This repository provides a step-by-step guide to setting up a Cloud Run service on Google Cloud Platform (GCP) using Terraform.

## Prerequisites

1. **Google Cloud Account**: Ensure you have a GCP account.
2. **Google Cloud SDK**: Install the Google Cloud SDK on your local machine.
3. **Terraform**: Install Terraform on your local machine.
4. **Docker**: Install Docker on your local machine.

## Steps

### 1. Create a new GCP Project

1. Go to the [GCP Console](https://console.cloud.google.com/).
2. Click on the project dropdown and select "New Project".
3. Provide a project name and click "Create".

### 2. Set up Google Cloud SDK

1. Initialize the SDK with your new project:
    ```sh
    gcloud init
    ```
2. Set the project ID:
    ```sh
    gcloud config set project <YOUR_PROJECT_ID>
    ```

### 3. Enable Required APIs

Enable the necessary APIs for Cloud Run, Cloud Build, and Artifact Registry:
```sh
gcloud services enable run.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable artifactregistry.googleapis.com
