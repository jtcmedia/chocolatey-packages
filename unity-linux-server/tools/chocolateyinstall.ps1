$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9be2869246c2/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.0b8.exe'
$checksum64     = 'f866554aef0eea69ae6c5864fde080b08cb233601fd5af371807604cea4f4e14'

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
