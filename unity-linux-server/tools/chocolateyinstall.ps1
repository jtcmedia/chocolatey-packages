$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cedbfe38737/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.3f1.exe'
$checksum64     = 'b868e0d41dca91da95e532bc7f76ae8f4f0c09ad40282aaf0069dfd8a5270e52'

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
