$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e12ab2d6a089/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.14f1.exe'
$checksum64     = '3c58e58d98ee310b0ee523f9bd38c71ee4832ed74244e53ede707dc7f93e4f77'

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
