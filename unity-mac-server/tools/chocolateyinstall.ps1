$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e0577a1a2ac/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.6f1.exe'
$checksum64     = '2c8cc56bc73e5cb787e0e42b4b07e66e90e9cb748d048bd1d6e7e95f7b2c7feb'

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
