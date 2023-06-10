$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ca3ffb99bcc6/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.27f1.exe'
$checksum64     = '76fe2e27181c1fba68fb85ac5e577446001aa221af5a171fa8dc630258311b3a'

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
