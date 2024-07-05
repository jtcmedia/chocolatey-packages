$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1490908003ac/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.9f1.exe'
$checksum64     = '5bd7565667ab403845cf0c598ab79823a0020bc7c69152ac86565092c705ae54'

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
