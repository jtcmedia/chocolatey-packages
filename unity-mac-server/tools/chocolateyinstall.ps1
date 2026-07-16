$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2212ba80b59e/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.0b4.exe'
$checksum64     = '572bd13205f39641aeda480f9c49ffbfb7bf3248e005e798eddb0c7e7b47d10b'

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
