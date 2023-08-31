$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fbf46ad88f3d/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.11f1.exe'
$checksum64     = '9fbfec931f3aecc2278d299a9465859e04eb3ba3c393987608a87d9584bbf3eb'

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
