$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a18e2220bd50/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.65f1.exe'
$checksum64     = 'e1e4b076ac40a62ea1b4e58e8fb7c49d7873e6b9759847ff49ea9c5b21c2f8c2'

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
