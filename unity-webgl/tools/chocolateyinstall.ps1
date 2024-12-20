$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2e806cf271c/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.32f1.exe'
$checksum64     = 'eaa7dbe0956904e80ddc45dbfcfc4790428c7b72d9dc1e66fc8b11b03bc6cd06'

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
