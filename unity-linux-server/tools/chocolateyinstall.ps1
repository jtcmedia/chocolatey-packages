$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/017862109af0/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.7f1.exe'
$checksum64     = 'dcb26f3dc7a6315521cebd947ff4fc4bee32d2f523c4763d28628583f6af3ab2'

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
