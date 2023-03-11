$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bcebec703747/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.10f1.exe'
$checksum64     = 'baaf2ad3b64602665cdb3423190f01984d05a7cc681b0801fba1c66c297ad8dd'

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
