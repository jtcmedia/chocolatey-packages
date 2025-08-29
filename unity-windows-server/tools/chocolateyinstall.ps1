$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ea398eefe1c2/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.2f1.exe'
$checksum64     = '8dcc8206a8c2f7bc8ce8176e7d6cd8765193ba0fccf747b713e00ecb33c6c519'

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
