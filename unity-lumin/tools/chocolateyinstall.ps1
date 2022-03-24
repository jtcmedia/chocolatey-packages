$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/12f8b0834f07/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.32f1.exe'
$checksum64     = 'db8c6461248ec5bcf847f95cdcdb778faa8eea57baf8124b87fe9e8b69a4b896'

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
