$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/213b516bf396/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.23f1.exe'
$checksum64     = '99e82392149e2e36d773ff8d24d1a05c53c3262cff9ee86f2d8142f32b1ab114'

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
