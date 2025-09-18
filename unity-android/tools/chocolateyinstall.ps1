$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/43d04cd1df69/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.5f1.exe'
$checksum64     = 'a4e6ad6b406d8a261eb5656957767449e9ae9f9fbea764ca66679ca5a7aedbec'

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
