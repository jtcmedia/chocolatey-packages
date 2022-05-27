$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9427c1534183/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.2f1.exe'
$checksum64     = 'ca7e342c3425e2d57b55d9204cfca09927a14b6f397623ef8817528cb5619759'

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
