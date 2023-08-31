$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fbf46ad88f3d/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.11f1.exe'
$checksum64     = '7418f0bfce7fde78bf084283e759bb34ec3f3348fe393106aa5032966f0d70c8'

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
