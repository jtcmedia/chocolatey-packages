$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c93c5d3acf5b/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.2.2f1.exe'
$checksum64     = '64b5e54eb8cef33cf60e47475102b4b9d17645fd5d575a2543e04a8f85a77788'

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
