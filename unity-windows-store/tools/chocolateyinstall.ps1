$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cc51a95c0300/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.6f1.exe'
$checksum64     = 'c97f57443e32d47a973331dc6d7727d56c1cab34317d0d89b148adef446599ac'

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
