$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ab88ac34d80c/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.8f1.exe'
$checksum64     = 'e6bf0c840edbd086e8eb9569cd441e4eb92f226186c548f438a9109c1348405a'

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
