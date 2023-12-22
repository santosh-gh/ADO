# Defined the Web Application Name and location  
$webappname="samplewebapp89"  
$AppServicePlan="samplewebappplan891"  
$location="Sweden Central" 
$ResourceGroup="test-rg" 

# Create a resource group.
# New-AzResourceGroup -Name myResourceGroup -Location $location

# Create an App Service plan in Free tier.
New-AzAppServicePlan -Name $webappname -Location $location -ResourceGroupName $ResourceGroup -Tier Free

# Create a web app.
New-AzWebApp -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName $ResourceGroup
