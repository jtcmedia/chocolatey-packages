$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1490908003ac/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.9f1.exe'
$checksum64     = 'ac9e4c4f5d6e28dc680959544f1a3e58227278288f7fb3fd8df0c24c3d298d31'

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
