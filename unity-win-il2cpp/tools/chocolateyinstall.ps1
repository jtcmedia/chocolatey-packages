$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3bd4f66ad299/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.5.10f1.exe'
$checksum64     = 'bc41f3e1d08e60cc748ac0d88132a23e8b3931656470535a0e13030d7f09a8ce'

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
