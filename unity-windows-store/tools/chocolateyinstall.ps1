$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a2fa5d8d101/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.38f1.exe'
$checksum64     = '3049080cafc0fd5bddcacd1cfba145d7b0fd42a60a831adaf4af5c763634c3b4'

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
