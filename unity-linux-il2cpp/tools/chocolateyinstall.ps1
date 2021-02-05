$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8ff31bc5bf5b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.2.3f1.exe'
$checksum64     = '8595d2067e396cd22bf3bedb9034c6a968ec336a01f656633a69006e97f079b2'

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
