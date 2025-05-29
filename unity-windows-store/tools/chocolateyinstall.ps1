$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/923722cbbcfc/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.1.5f1.exe'
$checksum64     = '926ef169aa164c4b7f739d18fc69df8dd8725cc5b5e7e99bb9363af403f9152f'

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
