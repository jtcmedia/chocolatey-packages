$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3b9dae9532f5/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.32f1.exe'
$checksum64     = 'cc81961cc5790197728aee524f21d5c0f5a5b797f050a8bed8eba11ca3f45086'

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
