$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f336aca0cab5/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.28f1.exe'
$checksum64     = '5afcd17f14a4e471aa986863638251f1c7b435831b271673d280d6ecbacd0628'

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
