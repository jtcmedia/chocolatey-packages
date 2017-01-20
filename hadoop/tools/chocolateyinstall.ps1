$ErrorActionPreference = 'Stop';

$packageName    = 'hadoop'
$packageVersion = $env:chocolateyPackageVersion
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'http://archive.apache.org/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz'
$src_url        = 'http://archive.apache.org/dist/hadoop/common/hadoop-2.7.1/hadoop-2.7.1-src.tar.gz'
$checksum       = 'd489df3808244b906eb38f4d081ba49e50c4603db03efd5e594a1e98b09259c2'
$src_checksum   = ''


$arguments = @{}
# Now we can use the $env:chocolateyPackageParameters inside the Chocolatey package
$packageParameters = $env:chocolateyPackageParameters

# Default the values
$src = $false;
$installPath = "C:\Hadoop"


# Now parse the packageParameters using good old regular expression
if ($packageParameters) {
    $match_pattern = "\/(?<option>([a-zA-Z]+)):(?<value>([`"'])?([a-zA-Z0-9- _\\:\.]+)([`"'])?)|\/(?<option>([-zA-Z]+))"
    $option_name = 'option'
    $value_name = 'value'

    if ($packageParameters -match $match_pattern ){
        $results = $packageParameters | Select-String $match_pattern -AllMatches
        $results.matches | % {
            $arguments.Add(
                $_.Groups[$option_name].Value.Trim(),
                $_.Groups[$value_name].Value.Trim())
        }
    }
    else
    {
        Throw "Package Parameters were found but were invalid (REGEX Failure)"
    }

    
    if ($arguments.ContainsKey("src")) {
          Write-Host "You want the source files installed"
          $src = $true
    }

    if ($arguments.ContainsKey("InstallPath")) {
        Write-Host "You want to use a custom Installation Path"
        $installPath = $arguments["InstallPath"]
    }
} else {
    Write-Debug "No Package Parameters Passed in"
}


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = $checksum32
  checksumType  = 'sha256'
  validExitCodes= @(0)
}

Install-ChocolateyZipPackage @packageArgs
Get-ChocolateyUnzip -fileFullPath "$toolsDir\*.tar" -destination $installPath
$hadoop_home = Join-Path $installPath "$packageName-$packageVersion"
Install-ChocolateyEnvironmentVariable `
    -VariableName "HADOOP_HOME" `
    -VariableValue $hadoop_home `
    -VariableType 'Machine'

Install-ChocolateyPath `
    -PathToInstall "%HADOOP_HOME%\bin" `
    -PathType 'Machine'

# don't need tar anymore
rm $toolsDir\*.tar -ea 0 -force
