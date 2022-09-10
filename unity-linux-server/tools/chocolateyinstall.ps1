$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7321c9670bc2/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.16f1.exe'
$checksum64     = '0208cd3ed94b22a21c321e759eb5864dd09823ba5cecc868e7c7fc9d2c536e17'

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
