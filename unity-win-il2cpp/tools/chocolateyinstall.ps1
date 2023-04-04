$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f5de2657605/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.13f1.exe'
$checksum64     = 'd6e1e5d6a0c9091f38cf46a335d0ee64ac82704ca45d6c68ee9d5f9a6dda8af3'

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
