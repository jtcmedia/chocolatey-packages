$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7197418f847b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.1.1f1.exe'
$checksum64     = 'cd9ecf90fa69d0cebcc58e1eb1f562dc4f8df93a8a56d9cfed38e48b906b7255'

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
