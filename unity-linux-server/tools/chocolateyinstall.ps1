$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9438f9b77a46/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.63f1.exe'
$checksum64     = '4550afabf24ff856261d500043d38ef99a73d95f70129f348a2daa7d1fde1270'

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
