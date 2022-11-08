$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9e7d58001ecf/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.3.13f1.exe'
$checksum64     = '8f0368641a1c80722b83268d49c588bf16ac009692ab206cce7c9a3ec791d3fb'

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
