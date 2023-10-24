$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b84c4024cd38/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.1.17f1.exe'
$checksum64     = '129a6e438b6a44b45276d2caf143a29c2b4f4bf7a4661a465ddb7cebaaf95b09'

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
