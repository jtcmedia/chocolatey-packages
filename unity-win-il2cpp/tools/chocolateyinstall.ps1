$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feea5ec8f162/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.5f1.exe'
$checksum64     = '7401502c758c4cea6dad0292adb064ad3dd3f380b6ec6c24a128251fd8459995'

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
