$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0da89fac8e79/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.45f1.exe'
$checksum64     = '20919c4a43707bbf09a8c14d646830993374ed336929fb85c4ecab3120984a4c'

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
