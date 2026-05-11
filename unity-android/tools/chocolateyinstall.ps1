$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1aa84e375f6/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.3.15f1.exe'
$checksum64     = '104a819454bbba6920e04f81c586cc1563d45903122dcf7e00a74979b2dc8b12'

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
