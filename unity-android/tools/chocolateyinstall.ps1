$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0c9c2e1f4bef/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.2.9f1.exe'
$checksum64     = 'd58da40000d7bfac52eea9182973cd651d8e1b33609ff590378cd5d5d2b5ac6a'

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
