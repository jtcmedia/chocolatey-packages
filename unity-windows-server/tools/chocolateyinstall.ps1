$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/022dac4955a3/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.12f1.exe'
$checksum64     = 'ac3ce3dbad2ce30832e5f5702d5465c416dcf0ef759af9fd74fec78918ed1fe9'

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
