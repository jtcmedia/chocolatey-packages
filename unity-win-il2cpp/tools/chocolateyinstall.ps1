$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cb755715f58/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.18f1.exe'
$checksum64     = '29a5237b59c927908f1d09654dc899840327b1ce2e7b11458395afb60a8ec938'

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
