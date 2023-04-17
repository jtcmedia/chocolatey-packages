$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/213b516bf396/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2021.3.23f1.exe'
$checksum64     = '67964cf888685f0d45dc36df885a393a7789fe9a499def94faac45a7a26ab96f'

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
