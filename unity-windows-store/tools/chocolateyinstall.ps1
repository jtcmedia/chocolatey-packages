$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ca267ce8005/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.4.12f1.exe'
$checksum64     = '7925adb7700a799987bea415d587a5a8427de58639f764b625077e29d5c0369a'

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
