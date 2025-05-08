$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e2281df4c52/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.2f1.exe'
$checksum64     = '9c477d42c0c4dbf9cdf946b28ec177fa65b3c2bbe0e892472cb685e095256f83'

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
