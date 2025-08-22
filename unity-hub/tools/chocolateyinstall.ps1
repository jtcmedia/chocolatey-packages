$ErrorActionPreference = "Stop"

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.exe"
$checksum64 = "83c9cd0baeed4d75ca99a9894940ac7e6a4847acdde4f7caf952d07e0151edfc"

$args = "/S"

$pp = Get-PackageParameters
if ($pp.InstallationPath) {
    $args += " /D=$($pp.InstallationPath)"
    Write-Host "Param: installing to $($pp.InstallationPath)"
}

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = "EXE"
    url64bit       = $url64
    softwareName   = "Unity Hub"
    checksum64     = $checksum64
    checksumType64 = "sha256"
    silentArgs     = $args
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
