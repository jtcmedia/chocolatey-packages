$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d36222f39966/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.0a8.exe'
$checksum64     = '1e860d8428cd4927ded6654c76eed88427d5b20289e49fcb9c5f44200520196f'

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
