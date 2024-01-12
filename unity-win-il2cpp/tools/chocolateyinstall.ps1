$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/381b4941466e/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.5f1.exe'
$checksum64     = '33e1ea7d0a11e39d095756f1b146ad1f5aedcf4eba9aa1b560dbe7445b581a64'

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
