$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/faa32412f6c9/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.1.15f1.exe'
$checksum64     = '15a90fd35588a377276780f3dc83e81348806c57da2f10d3084900449ab20dcc'

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
