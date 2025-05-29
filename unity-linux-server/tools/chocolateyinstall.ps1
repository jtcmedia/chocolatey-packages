$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/923722cbbcfc/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.1.5f1.exe'
$checksum64     = 'db91617991177753c3d05c276927adc8dbfafe93bb5a81a8c39fe763f56fa6fa'

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
