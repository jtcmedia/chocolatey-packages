$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ea152932a88/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.1.0f1.exe'
$checksum64     = 'dc28e7b46eda80754b01b99283f1c32ce48f6e80bd3194d3dfa0ea22f1fecb65'

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
