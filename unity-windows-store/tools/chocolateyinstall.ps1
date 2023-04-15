$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/30d813e1a2a9/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.2.15f1.exe'
$checksum64     = 'b5cd8345a5748ebd242ad519a1c1ee00da3754f2008204e29de2f8f42d7446f4'

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
