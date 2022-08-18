$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8f5fde82e2dc/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.3.38f1.exe'
$checksum64     = '9ab22b68c3af64e2151879d86b8d4cff34336c7a0dbc61c03b640fe67c03633d'

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
