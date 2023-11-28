$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a6dd9a634651/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.2.1f1.exe'
$checksum64     = 'c05d4a1ff4c59a0f7107cbb41b26410cd694df2b517ee24e93ae95550d581f44'

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
