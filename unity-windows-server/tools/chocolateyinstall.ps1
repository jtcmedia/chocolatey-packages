$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f7258d6eebbe/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.4.9f1.exe'
$checksum64     = '7c8014a098712c95ad3f3c8e4af8fa37fa212171706e4e79e888e590ee5f3399'

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
