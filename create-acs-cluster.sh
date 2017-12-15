az group create --name $1 --location eastus2
az role assignment create --role Contributor --resource-group $1 --assignee 232d441a-996f-4a42-a1ee-1ad3d47a3fd4
az acs create --orchestrator-type kubernetes --resource-group $1 --name $1Cluster --generate-ssh-keys --agent-count=1 --agent-vm-size=Standard_A1_v2 --master-vm-size=Standard_A1_v2
sleep 45
az acs kubernetes get-credentials --resource-group=$1 --name=$1Cluster 
zip -q -9 -j ~/clouddrive/sshkeys-$(date +%F).zip ~/.ssh/*

