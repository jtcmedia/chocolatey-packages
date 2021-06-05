$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b15f561b2cef/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.10f1.exe'
$checksum64     = '5a85a2258f82d9516426ca4eab7fb746c79718fbfe65b46a186f38f18791c839'

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
