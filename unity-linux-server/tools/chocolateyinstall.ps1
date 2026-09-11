$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e7b9b5b6244/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.3.24f1.exe'
$checksum64     = 'ad19228d3e4c249dff63c3a8001e3b1a5bc6bbb2ec4e4144789ae5d70bc56609'

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
