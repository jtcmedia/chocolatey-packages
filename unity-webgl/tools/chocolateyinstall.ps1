$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb3b7b32f191/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.39f1.exe'
$checksum64     = 'aa472d21841e8eaa0e648f8661588ab906f94c780c022a462927825c1dab292f'

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
