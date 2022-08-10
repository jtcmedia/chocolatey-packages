$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b30333d56e81/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.8f1.exe'
$checksum64     = '968a01c598706c0829b517cbb79c88cd21031b8057d88715b0be5e6f36e671b5'

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
