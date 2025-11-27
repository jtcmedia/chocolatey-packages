$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/589824c1fc31/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.14f1.exe'
$checksum64     = 'f00d3fbd73110ab8db26a91bc8975cb1a6f0019ecb0d3d97337ee75075533958'

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
