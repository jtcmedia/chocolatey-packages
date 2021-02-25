$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a2143876886/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.2.6f1.exe'
$checksum64     = '70897b64b63abb77beba402c438455d2108197978223840a4a3a854d9aa2edeb'

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
