$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c6e675195cf/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.18f1.exe'
$checksum64     = '2af5b170a7ea93e66f541500eab23f1b1761ce74d6f942a8bae6b51f3ff8c8c2'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
