$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f18e0c1b5784/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.1f1.exe'
$checksum64     = '67dedf7289f963b2027365ff7c8ef832f0afb51f17ab72f26338dfaeddb42adb'

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
