$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88c277b85d21/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.47f1.exe'
$checksum64     = '29bce2d2ba11a166c89ef0feda33073d85fed095b7faf21908fe53f1c299f23a'

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
