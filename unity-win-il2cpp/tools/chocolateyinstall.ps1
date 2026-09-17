$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7efac9f6c10e/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.1f1.exe'
$checksum64     = '03f0cadf1e54f3eb80bb59865e95bfd7725c9c3b94d22ed0f175a23ac5e5bde4'

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
