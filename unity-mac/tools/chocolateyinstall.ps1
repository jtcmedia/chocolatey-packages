$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/559fc0ec6670/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.2.16f1.exe'
$checksum64     = 'd258fb57d23c221eb31f1a2e2b2e0872a1becbefffbd92fe8aca8c9a0156991e'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
