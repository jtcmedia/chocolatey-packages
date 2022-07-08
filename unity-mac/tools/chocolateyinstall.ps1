$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2961e8c2b463/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.8f1.exe'
$checksum64     = '2cb0ab0c63826fa90a2c0779f4159555d26b2a353214c5c3c1eba0b3621b2118'

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
