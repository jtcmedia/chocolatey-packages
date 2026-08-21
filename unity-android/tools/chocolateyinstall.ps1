$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a9845a6430b3/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.0b9.exe'
$checksum64     = 'b833878127735cae31696f53a03613f81d709f800990b3b9588fc0c0a992b037'

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
