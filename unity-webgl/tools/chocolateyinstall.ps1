$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f45223012db/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.16f1.exe'
$checksum64     = 'fc1c6f9936fbc76cae8542f3508589ae07d8c79cec086226d051a99041556987'

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
