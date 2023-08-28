$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5eafc012955/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.8f1.exe'
$checksum64     = 'f664ee02c4021686b6b21dc6860c91a623ac0083c0fe8bd3c9defef16c1b66c1'

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
