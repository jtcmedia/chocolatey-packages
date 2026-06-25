$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0d9463e84828/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.1f1.exe'
$checksum64     = '693f1ae79a03cb274e16dfa7a51d12ea8e2b339bbe3a6c9e7420cc0b37aaa87b'

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
