$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f63fdee6d95/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.60f1.exe'
$checksum64     = '0e485994ea8bda8c259d24d610ec07213ed871195d04f5661039b0d245602ed4'

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
