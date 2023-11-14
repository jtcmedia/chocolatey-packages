$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35a524b12060/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.20f1.exe'
$checksum64     = '27f2d51f29724672675de707b76583fa25f951462b021d98b193eb7cc0294afa'

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
