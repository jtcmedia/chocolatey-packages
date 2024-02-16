$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/61c2feb0970d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.20f1.exe'
$checksum64     = '7f5df5ccf98052c11d5660c79faf45e39a6d82b6388f8cfad9ad50f25c70f094'

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
