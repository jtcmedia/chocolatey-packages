$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/34837772f4f8/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.11f1.exe'
$checksum64     = 'bdac1bbe741e0cc5a5d4ea02a443c2bbccec42ea45962a6740c2f85c7ef2569d'

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
