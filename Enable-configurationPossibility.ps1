$url = 'https://dl.google.com/dl/edgedl/chrome/policy/policy_templates.zip'
$destination = "$HOME\Downloads\GoogleChromeEnterpriseBundle64.zip"
$centralStoreFolder = 'C:\Windows\SYSVOL\domain\Policies\PolicyDefinitions'
$languageFolder = $centralStoreFolder + '\en-US'

#Check if 7zip is installed
$zip = Get-Command -Name 7z.exe -ErrorAction SilentlyContinue

#Download 7zip if not installed
if ( -Not $zip ){
    choco install -y 7zip.install
}

#Moving to Download folder
Set-Location "$home\Downloads"

# Downloading zip file from google
Invoke-WebRequest -Uri $url -OutFile $destination
7z x .\GoogleChromeEnterpriseBundle64.zip -ofolder

Rename-Item ".\folder\" "folderChromeTemplate"

# Checking if there is a central store folder for .admx and .adml files. If not, it will be created
if (-not (Test-Path $centralStoreFolder)){
    New-Item $centralStoreFolder -ItemType 'Directory'
    New-Item $languageFolder -ItemType 'Directory'
}

# Copy chrome .adml and .admx files to the central store folder
copy-item "C:\Users\$env:USERNAME\Downloads\folderChromeTemplate\windows\admx\en-US\chrome.adml" $languageFolder
copy-item "C:\Users\$env:USERNAME\Downloads\folderChromeTemplate\windows\admx\chrome.admx" $centralStoreFolder