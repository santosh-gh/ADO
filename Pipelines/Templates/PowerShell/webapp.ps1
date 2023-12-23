# Defined the Web Application Name and location  
$WebAppName="samplewebapp89"  
$AppServicePlan="samplewebappplan89"  
$Location="Sweden Central" 
$ResourceGroupName="test-rg" 

# Create a resource group.
New-AzResourceGroup -Name myResourceGroup -Location $location

# Create an App Service plan in Free tier.
New-AzAppServicePlan -Name $AppServicePlan -Location $Location -ResourceGroupName $ResourceGroupName -Tier Free

# Create a web app.
New-AzWebApp -Name $WebAppName -Location $Location -AppServicePlan $AppServicePlan -ResourceGroupName $ResourceGroupName
