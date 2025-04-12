$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb93bc360d3a/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.46f1.exe'
$checksum64     = 'a6e7614a14396f54e251aa6db2ce373e0e684060de560bae585223475393c475'

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
