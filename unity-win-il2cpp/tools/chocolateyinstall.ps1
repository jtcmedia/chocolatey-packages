$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5ebc6493a86f/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.18f1.exe'
$checksum64     = '606c0ee892c3df970054ac2f6512a71808749e3b58c36cb2e340d85fd3cde5ab'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
