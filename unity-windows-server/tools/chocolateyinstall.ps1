$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/418bd0acaa6b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.1.13f1.exe'
$checksum64     = '4d64450629ad40960593037e23d268bbfef697564adf161a932f5498d504a67d'

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
