$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88b47c5e7076/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.0f1.exe'
$checksum64     = '1a07ecfd7add226b6f67a64af2c3ce9284d9457f999974150b0141d71352107a'

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
