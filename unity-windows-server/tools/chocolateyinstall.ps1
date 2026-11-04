$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/237b6593792b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.8f1.exe'
$checksum64     = 'dc755f428604bf5c83dfb92696e9b43adf091f063e15d997379812255da12425'

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
