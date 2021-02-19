$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e2c53f129de5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.2.5f1.exe'
$checksum64     = 'a8339dfd3df897cffbc63fcfcf1558c182552b490c76a3cc0ff7e43fb73fed3b'

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
