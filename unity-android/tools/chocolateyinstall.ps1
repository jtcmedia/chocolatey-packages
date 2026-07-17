$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9ba695d4f07/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.3.20f1.exe'
$checksum64     = '3d764e9ceaf202a46a0a97c050c9fc22928b0e7e0f076c0aee19748292dfc945'

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
