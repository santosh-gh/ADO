# Defined the Web Application Name and location  
$webappname="samplewebapp89"  
$AppServicePlan="samplewebappplan89"  
$location="Sweden Central" 
$ResourceGroup="test-rg" 

# Create a resource group.  
# New-AzureRmResourceGroup -Name DemoResourceGroup -Location $location  

# Create an App Service plan in Free tier.  
New-AzureRmAppServicePlan -Name $AppServicePlan -Location $location -ResourceGroupName $ResourceGroup -Tier Free  

#Create a web app.   
New-AzureRmWebApp -Name $webappname -Location $location -AppServicePlan $AppServicePlan -ResourceGroupName $ResourceGroup  

