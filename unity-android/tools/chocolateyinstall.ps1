$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3ae09b9f03c/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.44f1.exe'
$checksum64     = '26cedd92f7d2b091f5f6697ec80e6f1b064b9c47aabec4563a68fd0e003f4754'

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
