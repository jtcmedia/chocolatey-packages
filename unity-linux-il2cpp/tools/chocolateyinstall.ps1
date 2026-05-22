$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/342347f1f18f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.0b9.exe'
$checksum64     = '362cc37013c92cfe3c96c9bd9b72d39ee569e0ebd0cb81f6c10ca4b94c27e72c'

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
