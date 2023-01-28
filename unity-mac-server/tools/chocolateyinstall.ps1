$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8216e0211249/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.4f1.exe'
$checksum64     = '4063a73716f2f8e9db743bef4a2b76dd6f023c9dcc0f80cb6946eba27231eb0e'

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
