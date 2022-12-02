$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e8e88683f834/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.15f1.exe'
$checksum64     = '38302101b763bd271f327218a9e99be006c0ba04062e0a640241fae468793612'

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
