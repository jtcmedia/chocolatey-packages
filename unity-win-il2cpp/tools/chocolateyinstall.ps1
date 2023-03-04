$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/577897200b8b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.20f1.exe'
$checksum64     = 'd62dd645df95763222f023c56014590c3936a6e70b076c8d20efdb59b24cf361'

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
