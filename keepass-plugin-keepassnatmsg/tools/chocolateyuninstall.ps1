$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName = $env:ChocolateyPackageName
    zipFileName = "KeePassNatMsg-v$($env:ChocolateyPackageVersion)-binaries.zip"
}

Uninstall-ChocolateyZipPackage @packageArgs