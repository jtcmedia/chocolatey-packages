$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e0577a1a2ac/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.5.6f1.exe'
$checksum64     = '74c4f3ec6c6162295a1ec90dcd0450a3895acee0665299a7bed7a99062e69414'

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
