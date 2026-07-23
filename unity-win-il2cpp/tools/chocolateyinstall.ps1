$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5238eaafb35/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.0b5.exe'
$checksum64     = '3b11ba14a8e3894e53dfaee0587b57c2d70fff0d3ac56255388083bbfaebcacd'

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
