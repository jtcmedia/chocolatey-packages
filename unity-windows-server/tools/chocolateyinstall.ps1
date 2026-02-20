$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f3f87a02ba54/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.4.0b8.exe'
$checksum64     = 'd8a4bb158c52a15802e38735716210f6b4ad07dd8e86214c69c45f5a1c8cb0cc'

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
