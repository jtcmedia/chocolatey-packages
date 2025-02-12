$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ed7f6eacb62e/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.58f1.exe'
$checksum64     = '657b1675349c6b9a9312f439478df00559586e0260b019c23a7ba081e8396fd9'

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
