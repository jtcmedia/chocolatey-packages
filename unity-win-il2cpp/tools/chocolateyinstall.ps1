$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40eb3a945986/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.5f1.exe'
$checksum64     = '7c5a3000cc015acc1628093317774e953523fc53a6b2f4e7fccf6a71a1372724'

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
