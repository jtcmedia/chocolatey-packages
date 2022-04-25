$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3b70a0754835/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.1f1.exe'
$checksum64     = '0c476217173a1c266404190a456175252901f6e58b945f45fa4de6de428f4a06'

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
