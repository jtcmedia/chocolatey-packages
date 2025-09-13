$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17550c9bb584/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.4f1.exe'
$checksum64     = '45a021829bb85365bbdcfc1541a63e309590a6fbe0295d2f2673cf082d6de11b'

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
