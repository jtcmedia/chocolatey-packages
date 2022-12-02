$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e8e88683f834/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.15f1.exe'
$checksum64     = 'ab720238cce61cd3d8aa138be368f97d23b8887e7ec95ce8176d7c2cb12497fd'

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
