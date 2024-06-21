$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7dd95c051e11/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.7f1.exe'
$checksum64     = '3105c4e235d63b4899d0d9f62292bae0f1c25387b42d969f26e4049c8764ec99'

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
