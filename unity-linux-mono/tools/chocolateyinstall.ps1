$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4907324dc95b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.2.21f1.exe'
$checksum64     = '30a9383aab47a1442cacbe617015f66fad62d47141a386a42381cc1e5d5c2809'

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
