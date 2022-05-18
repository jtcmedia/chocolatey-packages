$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/78d14dfa024b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.4.39f1.exe'
$checksum64     = '7c942c98673ee16ab31f1f3a899cdf4f4fddba206154da0994b41bc51424f620'

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
