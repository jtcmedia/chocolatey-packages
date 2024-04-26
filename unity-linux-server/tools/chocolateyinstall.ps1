$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ec6cd8118806/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.26f1.exe'
$checksum64     = 'af85aef43c8b3b4c8f8946c07993b76d43e26575fd9ba19b388d8661cd8dfd39'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
