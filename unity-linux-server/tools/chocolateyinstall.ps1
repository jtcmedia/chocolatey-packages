$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/381b4941466e/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.5f1.exe'
$checksum64     = '2f718c37589fbbb1dcf828ed2a0531fbeb4d99961e11062cfbe0d5e5411e8b6b'

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
