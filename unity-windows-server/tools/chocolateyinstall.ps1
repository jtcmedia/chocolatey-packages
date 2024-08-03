$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53a692e3fca9/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.13f1.exe'
$checksum64     = 'd8249b2585f238d1ce0c3489f88521d30a2c3e0aed5ec1999593557e8a663b74'

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
