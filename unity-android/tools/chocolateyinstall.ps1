$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bc6fbc26ac6/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.0a8.exe'
$checksum64     = '9f247c80a9afdbac9a333081ed069efb0d103a7fa9a3e924272b9a31509a9028'

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
