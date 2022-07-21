$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9aa0f82c4f96/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.10f1.exe'
$checksum64     = 'e6ab14f13a1db4ca3dfc202fdf825437dd4ba72645057d7131b4a88a48514f50'

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
