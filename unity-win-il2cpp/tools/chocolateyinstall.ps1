$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4907324dc95b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.21f1.exe'
$checksum64     = 'd778115369b38799698fecf5e1d70a60f955fc56882930fe52054985526afd7f'

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
