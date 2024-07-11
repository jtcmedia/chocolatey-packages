$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/340ba89e4c23/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.37f1.exe'
$checksum64     = '96c2d74278e9e4d53536fe45254c517e501dcb91e428cf0c5b983aee0ddae25a'

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
