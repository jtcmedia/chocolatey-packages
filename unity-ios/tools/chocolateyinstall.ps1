$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fb3b7b32f191/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.39f1.exe'
$checksum64     = '58c652eac1c013c632d6dc84a58777601bd97d4bc6cb599904ecb9d25f235605'

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
