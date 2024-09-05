$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a13dfa44d684/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.45f1.exe'
$checksum64     = 'a7288ce3e635107e94ab9eb4d5cf8982dd21c022c0526b84f15a41d67ccce631'

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
