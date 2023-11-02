$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/629111e352bc/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.19f1.exe'
$checksum64     = '095af5953c78918d7b2ecd0edcc3c630c160879a958b6e8a5523eac0cb4656ca'

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
