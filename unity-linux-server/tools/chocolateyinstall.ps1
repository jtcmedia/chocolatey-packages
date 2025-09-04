$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b7b9860b7bbd/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.57f1.exe'
$checksum64     = '7d0105dacdbeb1082efd26384b77d267692e6d1d232e679e88e298957d5b8168'

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
