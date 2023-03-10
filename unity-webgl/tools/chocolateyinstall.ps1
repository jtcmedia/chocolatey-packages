$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/18bc01a066b4/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2020.3.46f1.exe'
$checksum64     = 'b18f5a726f7d4ee00c7e1f4397029da2f577ea8910efc894bc24453c21618f7e'

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
