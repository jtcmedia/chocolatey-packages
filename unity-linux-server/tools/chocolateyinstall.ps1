$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d46ecc5f5049/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.0b6.exe'
$checksum64     = '964d88b20d57119c871b094f8af911ee6a652c7f45f7651e54ab862afe1ac8a3'

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
