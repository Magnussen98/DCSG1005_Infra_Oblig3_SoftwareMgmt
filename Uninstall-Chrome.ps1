$chromeTemplateDownload = "$HOME\Downloads\GoogleChromeEnterpriseBundle64.zip"
$chromeTemplateFolder = "$HOME\Downloads\folderChromeTemplate"
$centralStoreFolder = 'C:\Windows\SYSVOL\domain\Policies\PolicyDefinitions'

#Uninstalls chrome
Choco uninstall googleChrome

$folder = "C:\Users\$env:username\AppData\Local\Google"

#Check if there is any data related to chrome in the local appData folder
if (Test-Path $folder){
  remove-item $folder -Recurse  #Delete the custom chrome settings
}

if (Test-Path $centralStoreFolder){
  Remove-Item $centralStoreFolder -Recurse
}

if (Test-Path $chromeTemplateDownload){
  Remove-Item $chromeTemplateDownload -Recurse
}
if (Test-Path $chromeTemplateFolder){
  Remove-Item $chromeTemplateFolder -Recurse
}