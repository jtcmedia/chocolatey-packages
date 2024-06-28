$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/011206c7a712/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.35f1.exe'
$checksum64     = '14537ec43b455be3a0af2bc355ea204206ba0c7e9b2d15b4c814bc91bf0dcc6c'

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
