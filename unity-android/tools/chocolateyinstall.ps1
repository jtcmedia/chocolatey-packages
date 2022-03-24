$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/12f8b0834f07/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.32f1.exe'
$checksum64     = 'eb8b512dc30c048527b94b0e8f1dcc8ef1f84862acf35113bc8d9d0f915e4c52'

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
