$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e25a174756c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.20f1.exe'
$checksum64     = '1e33012f78766d703fc1bdc129a63aef773d0517f844b626af488937b57d72fa'

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
