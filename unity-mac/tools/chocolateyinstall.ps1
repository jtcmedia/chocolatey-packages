$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fd6670bb8be9/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.3.39f1.exe'
$checksum64     = '3a4ed6d1fab57d714315f2ec6635b8fdeb164d7219312140412c3bbc04522d29'

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
