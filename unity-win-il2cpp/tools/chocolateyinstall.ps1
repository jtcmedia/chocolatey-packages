$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e12ab2d6a089/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.14f1.exe'
$checksum64     = 'b730a0ce8d6a357f37e13a6e6e85d4f25c9ecdd8715fca5ed9481a644abeb16c'

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
