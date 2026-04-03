$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/64de5ee36373/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.0a2.exe'
$checksum64     = '60ce75a6b186630d86111467b720747a07cc77c533ff7cc3b6a69cb02a69c29a'

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
