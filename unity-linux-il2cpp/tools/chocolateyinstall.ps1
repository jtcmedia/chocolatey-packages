$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e49a51cf6290/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.6f1.exe'
$checksum64     = '450c378fed14cf9ed0d5cb5b6575427e1fdae88831f1082b4c091bc3dc47ccc9'

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
