$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/413673acabac/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.10f1.exe'
$checksum64     = '96e295bb881a53390f2a4024ef16f70a0c35211803d0ce650a80585f5e208649'

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
