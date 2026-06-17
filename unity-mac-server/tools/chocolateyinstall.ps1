$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88b47c5e7076/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.5.0f1.exe'
$checksum64     = 'cc0518a37b734d8320cab29d8aec7364007dd9525c2155991084fab77e698876'

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
