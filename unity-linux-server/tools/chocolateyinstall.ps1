$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cc571a6ec95/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.9f1.exe'
$checksum64     = '5658358e983a5d51251309b2b25d483d68246411fa82c223c230665fc66f28d9'

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
