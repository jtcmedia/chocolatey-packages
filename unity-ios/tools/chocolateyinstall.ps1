$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/48b1aa000234/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.12f1.exe'
$checksum64     = '69e392caa41f2b25d0dd69b83d9ecf4d464aca957aa6e5b786f7bce0e50ccfa9'

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
