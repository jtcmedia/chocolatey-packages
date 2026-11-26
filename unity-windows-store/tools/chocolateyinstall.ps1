$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/34837772f4f8/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.11f1.exe'
$checksum64     = '23180d587bcb54f0d5bfecfbf20ddc5990b153d31b5977d179a115e01e501a0f'

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
