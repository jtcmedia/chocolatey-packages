$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ad1ed33fd3b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.47f1.exe'
$checksum64     = 'a3863b5ac553074b5a67572979dc99eb30eaba1a34fb36412e97e6fedee060da'

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
