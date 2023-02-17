$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/660cd1701bd5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.3.45f1.exe'
$checksum64     = '48c78fb1ac794db0d82f85c94c16d4f572e5647c947c8c04b28b8f0f68b17940'

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
