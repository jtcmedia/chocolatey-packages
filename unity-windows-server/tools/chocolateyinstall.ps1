$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b7b9860b7bbd/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.57f1.exe'
$checksum64     = '9df21b855bd20db69e94ec66de826f50e399e2f2dd9d4cec73195354e6d76471'

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
