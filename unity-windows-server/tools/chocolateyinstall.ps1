$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa01dd6b76d5/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.11f1.exe'
$checksum64     = 'ee37360ce1e787ce288947b6482fd5050256b81bdd0fbb386720039b69e1a5ab'

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
