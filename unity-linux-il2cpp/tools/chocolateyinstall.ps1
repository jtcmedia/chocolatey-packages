$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e00e24c187a5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2023.1.3f1.exe'
$checksum64     = '8e97f7c5b39cdd4151dbf888c0b92583a233450e7c5055543f3d2ed9094464de'

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
