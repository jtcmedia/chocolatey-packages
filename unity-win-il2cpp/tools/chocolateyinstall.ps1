$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e2281df4c52/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.2f1.exe'
$checksum64     = '3cf02d4483dd8f962f66c4826856619829d4dc8095144c9f4d8f1d3f9e1d2f4a'

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
