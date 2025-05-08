$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e2281df4c52/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.1.2f1.exe'
$checksum64     = '87a2c8c0adec871f754c08dc168983c193ed426793eb10e1c8466843fcc6c004'

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
