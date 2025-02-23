$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/56df1dd3b76d/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.0a4.exe'
$checksum64     = '53fdae232474d1d4a99a11602380ba5d529b840be9c788f238bff79cfbeab839'

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
