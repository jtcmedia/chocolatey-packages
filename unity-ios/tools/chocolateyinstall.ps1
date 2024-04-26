$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ec6cd8118806/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.26f1.exe'
$checksum64     = 'd9833d1163aa8c1f3caff194262ddb9c24ce1037273d7b7aa330cfe57e032c77'

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
