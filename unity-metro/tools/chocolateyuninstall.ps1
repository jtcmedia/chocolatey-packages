$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$paramsJson = get-content "$($toolsDir)\params.json"
$p = (($paramsJson) -join "`n") | convertfrom-json

$packageDir = Split-Path -parent $toolsDir
$binRoot = (Get-ToolsLocation) -replace "\\", "/"

write-host "Read params from json"
write-host (convertto-json $p)

$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $p.package.title

if ($key.Count -eq 1) {
  $key | % { 
    $file = "$($_.UninstallString)"

    Uninstall-ChocolateyPackage -PackageName $p.package.name `
                                -FileType 'EXE' `
                                -SilentArgs "/s" `
                                -ValidExitCodes @(0) `
                                -File "$file"
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$($p.package.name) has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$key.Count matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $key | % {Write-Warning "- $_.DisplayName"}
}

# Remove Example Project if installed
# Remove-Item "$env:PUBLIC\Documents\Unity Projects\Standard Assets Example Project" -Recurse -ErrorAction SilentlyContinue -Force
