$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d16e074b49fd/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.5.5f1.exe'
$checksum64     = 'ce74af2488d574a3ccac3a42c6c48783e7d9be00c0e976573d8ceb287cb2616c'

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
