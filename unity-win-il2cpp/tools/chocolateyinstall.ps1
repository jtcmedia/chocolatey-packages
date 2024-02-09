$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157b46ce122a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.35f1.exe'
$checksum64     = 'd5d428696f49bdcd5f043a8232c8a5f52c26d1ac0d7223c56a42641b5345707a'

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
