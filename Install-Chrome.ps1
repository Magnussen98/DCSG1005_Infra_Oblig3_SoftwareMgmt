#### Install Google Chrome with choco ######

choco install -y googleChrome

##### Verify installations#########

$registrylocations = (
  "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall",
  "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall",
  "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall"
)

$registryKey = $registrylocations | Get-ChildItem | Where-Object { $_.GetValue('DisplayName') -eq 'Google Chrome'}

$displayName = ($registryKey | Get-ItemProperty).DisplayName
$version = ($registryKey | Get-ItemProperty).DisplayVersion

Write-Output "`nSoftware: $displayName    -->     Version: $version`n"