$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/921b45a28ab6/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.9f1.exe'
$checksum64     = 'e9ca31284f5ce0a5523553754fe9e9ae74e2e822bcfbfb7e6a0c1defa4befc91'

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
