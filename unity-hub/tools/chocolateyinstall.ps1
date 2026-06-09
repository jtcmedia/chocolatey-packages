$ErrorActionPreference = "Stop"

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup-x64.exe"
$checksum64 = "ce69aea40df46f5b844470827b0dbde1a0c1ae403c34008fe899da94c99d2525"

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
