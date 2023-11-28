$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a6dd9a634651/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.2.1f1.exe'
$checksum64     = '69d380fcb14adfaf120b64ca88ed88baa73ffe6d408d62bb39bb1d94051b6162'

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
