az group create --name $1 --location $2
az role assignment create --role Contributor --resource-group $1 --assignee 232d441a-996f-4a42-a1ee-1ad3d47a3fd4
