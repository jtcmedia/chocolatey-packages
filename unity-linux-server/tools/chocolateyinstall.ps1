$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/12bfff696524/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.4f1.exe'
$checksum64     = '530323f20467b004829f63c3aea06fd8b3b725b247fcb4da536162e8a341e0dd'

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
