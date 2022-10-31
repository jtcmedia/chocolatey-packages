$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9ac1ff5ca45b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.21f1.exe'
$checksum64     = 'd2d6073419adc8c1301242be2f93afde2fe657e7180c6a323449396a8ed2644f'

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
