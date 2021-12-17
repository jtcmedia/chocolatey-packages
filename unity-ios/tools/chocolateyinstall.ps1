$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6bd9e232123f/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.2.7f1.exe'
$checksum64     = '43579e2356c668035a7ead8b59c7fc2f782f56dc424b476b6a118cc141792216'

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
