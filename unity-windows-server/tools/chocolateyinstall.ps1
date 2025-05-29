$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4504a57e80f0/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.0b3.exe'
$checksum64     = 'bcdf0aaed5014e1bc8d28806d4f70f766a2ba3cdedf705972f81c04a46445478'

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
