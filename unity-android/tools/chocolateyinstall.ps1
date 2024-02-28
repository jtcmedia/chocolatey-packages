$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a1e21c61430/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.2.11f1.exe'
$checksum64     = '5e00ee2060cf86b5b8ca090d2db07ecda97a4c589636c98518fc714efed25aff'

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
