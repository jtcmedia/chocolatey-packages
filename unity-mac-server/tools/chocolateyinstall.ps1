$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/61c2feb0970d/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.20f1.exe'
$checksum64     = '631777ab44fbedb4d85762d4cce2088483528c1fcacfacf3c4ddaa0e39157765'

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
