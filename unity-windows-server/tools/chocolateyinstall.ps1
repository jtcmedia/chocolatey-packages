$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a56f230f6470/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.3.16f1.exe'
$checksum64     = 'c1c7ae4acfabc674c8b77c8839496c20ab8d4c208d58b6cb41bce315a79c5d85'

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
