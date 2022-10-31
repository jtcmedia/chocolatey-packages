$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ac1ff5ca45b/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.21f1.exe'
$checksum64     = 'fdd255b726598cf56b57ec009d5f351a9076a914e452611f28578a41e64070e6'

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
