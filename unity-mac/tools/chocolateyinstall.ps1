$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ab88ac34d80c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.8f1.exe'
$checksum64     = '90a043158ee54b8d899b28d601763482b91b794e83f72eaac610912fc0e594fe'

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
