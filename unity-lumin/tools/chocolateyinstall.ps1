$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b805b124c6b7/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.48f1.exe'
$checksum64     = 'c6ff590cc20630f0569a92e564dc25ba365e123f05d2a332c36bafaa69539046'

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
