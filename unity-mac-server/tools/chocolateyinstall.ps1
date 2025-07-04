$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf6d2d083ec9/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.0b8.exe'
$checksum64     = '4bf00c8adbafc924b290e207698d0d909fa0a94cd529485b93b6e6a42feb412c'

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
