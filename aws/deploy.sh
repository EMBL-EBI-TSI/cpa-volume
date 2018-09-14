#!/usr/bin/env bash
# Set color variable
CYAN='\033[1;36m'
NC='\033[0m' # No Color

set -e

# Local variables
export APP="${PORTAL_APP_REPO_FOLDER}"
export TF_VAR_deployment_path="${PORTAL_DEPLOYMENTS_ROOT}/${PORTAL_DEPLOYMENT_REFERENCE}"
export DPL="${TF_VAR_deployment_path}/"
export TF_VAR_name="$(awk -v var="${PORTAL_DEPLOYMENT_REFERENCE}" 'BEGIN {print tolower(var)}')"

# Echo local variables
echo "export TF_VAR_name=${TF_VAR_name}"
echo "export APP=${APP}"
echo "export DPL=${DPL}"
echo "export TF_VAR_deployment_path=${TF_VAR_deployment_path}"

# Launch Terraform deployment
echo -e "\n\t${CYAN}Terraform apply${NC}\n"
terraform apply --state=${DPL}'terraform.tfstate' ${APP}'/aws/terraform'

# Extract the external IP of the instance
volume_id=$(terraform output -state=${DPL}'terraform.tfstate' volume_id)
