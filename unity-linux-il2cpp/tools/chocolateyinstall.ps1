$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb119bb0b476/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.0f1.exe'
$checksum64     = '03c73a9698d04effc5941d3a10efa3b48cf465bad7c64e4e51188255cb13ccc9'

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
