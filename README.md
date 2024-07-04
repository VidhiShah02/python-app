# Setting Up Infrastructure with Terraform Module on Google Cloud Platform

This guide helps you use Terraform to manage infrastructure on Google Cloud Platform (GCP) in a structured way. You'll set up service accounts, VPCs, subnets, and potentially Cloud Run resources.

1. **Install Google Cloud SDK and Authenticate**

- Install the Google Cloud SDK and authenticate with your GCP account.

- Set your project as the default for future commands.

1. **Create Terraform Configuration Files**

- **main.tf**: Contains provider details and configurations, such as for Secret Manager.

- **version.tf**: Specifies the Terraform version to use.

- **variables.tf**: Defines project-specific variables like project ID and region. \


1. **Set Up Service Account**

- Use Terraform to create a service account with required permissions.

- Download its JSON key (`gcp-keys.json`) and store it in your project directory for authentication. \


1. **Organize into Modules for Manageability**

- **vpc-module/**:

- variables.tf: Defines VPC and subnet configurations.

- vpc.tf: Sets up VPC resources.

- subnets.tf: Defines subnet configurations.

- cloud-run.tf : Set up the cloud run with volume and noAuth policy

- outputs.tf: Captures useful resource information.

![a screenshot of the vpc networks page with an arrow pointing to the external vpc](images/RgC-screenshot-vpc-networks-page-arrow-pointing.png)
![Enter image alt description](images/SUb_Image_3.png)
![Enter image alt description](Images/FAg_Image_4.png)

1. **Create Main Module**

- Define necessary variables in the root directory's main module.

- Include the `vpc-module` to create VPCs and subnets.

![Enter image alt description](images/qNa_Image_5.png)


1. **Enable Required APIs and Assign Roles**

![Enter image alt description](images/dCu_Image_6.png)

![Enter image alt description](images/05l_Image_7.png)

- Apply Terraform commands to initialize and deploy configurations, ensuring all components are set up correctly.

**How Terraform Modules are Reusable: \
Flexibility**: Modify variables in `variables.tf` to perform CRUD operations on resources.

- **Code Reuse**: Avoid rewriting code for creating new VPCs, subnets, or Cloud Run resources. Use existing modules and update configurations as needed.
