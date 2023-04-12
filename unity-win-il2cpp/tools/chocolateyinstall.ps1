$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b2c9b1ac6cc0/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.14f1.exe'
$checksum64     = '014bb3e7f4e2e5fc68265ac61cd29b289a2f93e42aace7b8ab6362cded726779'

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
