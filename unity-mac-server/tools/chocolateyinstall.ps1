$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4016570cf34f/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.16f1.exe'
$checksum64     = '76deba692dad49f00866d240a26350dc836beba3b3c4d822b1ee985ce647fffb'

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
