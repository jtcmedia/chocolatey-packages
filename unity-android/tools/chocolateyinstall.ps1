$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b58023a2b463/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.15f1.exe'
$checksum64     = '8deb5a0b7ec6753eb72d1fc7bdee4f61e7e93a64fe6f55f3723394ba8e464ebf'

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
