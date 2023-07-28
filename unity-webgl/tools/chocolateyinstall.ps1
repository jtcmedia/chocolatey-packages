$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/964b2488c462/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.1.6f1.exe'
$checksum64     = '63c830a43a08be8d8ff5d91816241df37954d3703dcb7d3f603bff74cea70c2e'

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
