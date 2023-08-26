$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/661833f8c66c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.10f1.exe'
$checksum64     = '4245c5329c4debd2642d22a5ce7224e6a0a37a5d8e9789741f6f5c2a814cb79a'

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
