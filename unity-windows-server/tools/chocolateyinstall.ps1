$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d2c21f0ef2f1/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.16f1.exe'
$checksum64     = 'cd4b8d659b534d81559d48c67563759373cd4d61678251490e44d31bea145ccf'

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
