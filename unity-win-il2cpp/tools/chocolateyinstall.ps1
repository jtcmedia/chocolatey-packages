$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/18bc01a066b4/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.46f1.exe'
$checksum64     = '4464369d3a01034f1cbf41c5567248191cffd5ab47dd8034154be64787ca8ebb'

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
