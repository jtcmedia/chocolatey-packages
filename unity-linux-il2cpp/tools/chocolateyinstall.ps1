$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/964b2488c462/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.6f1.exe'
$checksum64     = 'b44ed542155f69cf8c85b9e9992fa9a3c475d1bbf5f828a66c7c182a5bc0d2c4'

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
