$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName = $env:ChocolateyPackageName
    zipFileName = "KeeAgent-v$($env:ChocolateyPackageVersion)-binaries.zip"
}

Uninstall-ChocolateyZipPackage @packageArgs