# Create new resource group:
New-AzResourceGroup -Name <name> -Location <location>
#
# Create new Virtual Machine:
# Note that the default subnet/image for VMs is "Win2016Datacenter". Specifiy here if you would like to change that, if you do, change the open ports to what is needed. (80 and 443 for Web, 3389 for Remote Access)
New-AZVM -ResourceGroupName "<name>" -Name "<vmname>" -Location "<location>" -VirtualNetworkName "<vnetname>" -SubnetName "default" -SecurityGroupName "newNSG" -PublicIPAddressName "<ipname>" -OpenPorts 80,443,3389
#
#Enter userid and password for the VM (these will be the credientals you use to remotely access the VM)
#
#Stop the VM
Stop-AzVM -ResourceGroupName "<rgname>" -Name "<vmname>"
#Start
Start-AzVM -ResourceGroupName "<rgname>" -Name "<vmname>"