$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/396a1c6fe404/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.17f1.exe'
$checksum64     = 'c84500eee10b40b539e3a9db88f36fbb22048116c2958b8103c93c5cf34bbfd1'

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
