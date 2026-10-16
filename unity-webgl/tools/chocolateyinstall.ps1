$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d20c9ac777da/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.6.6f1.exe'
$checksum64     = '605dfbc3bd1201face78040f2da6f529e8b48ce132018cec91a248fd0555c391'

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
