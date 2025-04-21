$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2aeb7e9a02a2/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0a9.exe'
$checksum64     = '0f5bca4310fad64d919c1c32139597434ff0dc9262417529a54c0adbafbb9cfb'

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
