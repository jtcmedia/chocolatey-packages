$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f34db9734971/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.3f1.exe'
$checksum64     = 'abf51579351eb5eb2f81c2a50e0d48c37c334285458ea47526a61476c7cf61b9'

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
