$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ab2d9ed9190/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.0.34f1.exe'
$checksum64     = '254d83ca985ff6f4327efe117adc61d1fa594b25e7788416ad75073dea539d81'

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
