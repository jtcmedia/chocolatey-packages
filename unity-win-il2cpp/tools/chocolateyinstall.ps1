$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ffeab063bb93/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.13f1.exe'
$checksum64     = '7a8050227bac5c6176598c7c92c37152bd5950e47eb87d486f4712f5e53b8ed4'

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
