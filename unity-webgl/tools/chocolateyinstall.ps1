$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/213b516bf396/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.23f1.exe'
$checksum64     = '4f9ca1ed3831863d3df1d3b4bc500b970c6dffbbb886ef6b1288f0acb7ef765f'

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
