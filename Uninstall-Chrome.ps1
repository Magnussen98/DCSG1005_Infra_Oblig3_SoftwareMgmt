#Uninstalls chrome 
Choco uninstall googleChrome

$folder = "C:\Users\$env:username\AppData\Local\Google"

#Check if there is any data related to chrome in the local appData folder
if (Test-Path $folder){
  remove-item $folder -Recurse  #Delete the custom chrome settings
}