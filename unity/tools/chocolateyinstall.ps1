$ErrorActionPreference = 'Stop';

$packageName        = 'unity'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'https://netstorage.unity3d.com/unity/1f1dac67805b/Windows64EditorInstaller/UnitySetup64-2019.4.4f1.exe'
$checksum64         = '511bf4d876c6acf2679ee26a3bf02d16723b28f9bc893a110183fa4f0294f166'

$args = '/S'

$pp = Get-PackageParameters
if ($pp.InstallationPath) {
    $args += " /D=$($pp.InstallationPath)"
    Write-Host "Param: Installing to $($pp.InstallationPath)"
}

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'Unity*'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = $args
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
