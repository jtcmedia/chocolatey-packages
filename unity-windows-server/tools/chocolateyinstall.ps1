$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d17678da8412/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.0b1.exe'
$checksum64     = '9c9070f2fee1df113626f3636471bbc5d25156262a5090a92028235a061d9103'

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
