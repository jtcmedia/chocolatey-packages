$ErrorActionPreference = "Stop"

$packageName = $env:ChocolateyPackageName
$softwareName = "Unity Hub"
$installerType = "EXE"
$silentArgs = "/S"
$validExitCodes = @(0)

$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
    $key | ForEach-Object {
        $file = "$($_.UninstallString)"

        Uninstall-ChocolateyPackage -PackageName $packageName `
            -FileType $installerType `
            -SilentArgs "$silentArgs" `
            -ValidExitCodes $validExitCodes `
            -File "$file"
    }
}
elseif ($key.Count -eq 0) {
    Write-Warning "$packageName has already been uninstalled by other means."
}
elseif ($key.Count -gt 1) {
    Write-Warning "$($key.Count) matches found!"
    Write-Warning "to prevent accidental data loss, no prgrams will be uninstalled."
    Write-Warning "Please alert packages maintainer to following keys were matched:"
    $key | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}
