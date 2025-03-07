$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/249fe0a196c2/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.0a6.exe'
$checksum64     = 'f1851894921e5dc32c2c66deae553987a73ca3081c36ad4c231f8d7dfd099a56'

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
