$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/12bfff696524/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.4f1.exe'
$checksum64     = 'c7c28c4a5f5271e242e5ae5dec3cbc4e83709c9c3f0edfa17da7591b22ddb036'

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
