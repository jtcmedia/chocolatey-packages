$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e0577a1a2ac/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.5.6f1.exe'
$checksum64     = '89dd171532dd7e3354516e567aa114682470250a2266622905d5b9056c4ae358'

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
