$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9f9d16c45e54/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.51f1.exe'
$checksum64     = 'cade69c97cf7f14e7a13df13621f765840340d4a3ed90b0a9cb0121bbd17901f'

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
