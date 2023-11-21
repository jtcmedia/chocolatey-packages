$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d0d63d039a6f/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.0f1.exe'
$checksum64     = '6c18e8d07a03cdc1ab33da4f05ccce32bf42b638218120ac8f241abb56811225'

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
