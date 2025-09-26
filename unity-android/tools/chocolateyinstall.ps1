$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cc51a95c0300/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.6f1.exe'
$checksum64     = '1a87f4f429b0da32cd5473a1b290c18ea2701f19a7fc85f91b7ce4f46d7dc187'

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
