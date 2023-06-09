$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f18e0c1b5784/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.1f1.exe'
$checksum64     = 'a37cb70e7a8deee19c8ded7c461002e3f6e6016b77502c11548cb26e01d55cdd'

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
