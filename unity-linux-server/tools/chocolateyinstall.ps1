$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d20c9ac777da/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.6f1.exe'
$checksum64     = '91b1b45b496ea17bb0e27c69a994e87755c0495647278a787ff68158bba2dbf4'

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
