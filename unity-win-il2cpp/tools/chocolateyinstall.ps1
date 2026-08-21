$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a9845a6430b3/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.0b9.exe'
$checksum64     = '5546068db42d33ae7fbcf20f9c17a266b8e75a3ae79c1254b1e033eb75217f50'

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
