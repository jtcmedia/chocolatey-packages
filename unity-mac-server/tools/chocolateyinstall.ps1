$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e25a174756c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.20f1.exe'
$checksum64     = 'c93b4fed814d3e788fdd2222f20beab13b2efcdd12dacf4e1207f7955080a0a0'

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
