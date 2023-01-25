$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55531d7fa82e/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.3f1.exe'
$checksum64     = '0cebe47cba7be31c2de391f22ca64db0b0f352459c150317985ae6ab23621fae'

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
