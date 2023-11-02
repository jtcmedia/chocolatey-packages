$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/629111e352bc/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.19f1.exe'
$checksum64     = 'ec89b13b837d662b782d47e3ae0262bb8efb206024b137b53a4764af0c4ee68b'

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
