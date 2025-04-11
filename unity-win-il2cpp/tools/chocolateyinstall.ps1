$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6c53ebaf375d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.61f1.exe'
$checksum64     = '462ac0222015569cbe2de2d5e1ed001dfe34c7cf37114820b3dbc104032f8228'

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
