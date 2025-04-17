$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ad1ed33fd3b/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.47f1.exe'
$checksum64     = '37652788da47ed20ee931c4defa27381ea874dadb6711b9184163aa8782176fe'

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
