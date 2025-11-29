$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9438f9b77a46/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.63f1.exe'
$checksum64     = 'ffb02c6aef78d6d503062f0672ce3b156e57721e51226afeb48eb7f03258a8a8'

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
