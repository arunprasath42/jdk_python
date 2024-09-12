<?xml version="1.0"?>
<package xmlns="http://schemas.microsoft.com/packaging/2010/07/nuspec.xsd">
  <metadata>
    <id>python3</id> <!-- Change the ID if necessary -->
    <version>3.11.5</version>
    <title>Python 3.11.5</title>
    <authors>Your Name or Company</authors>
    <owners>Your Name or Company</owners>
    <description>This package installs Python 3.11.5.</description>
    <summary>Installs Python 3.11.5, a widely used high-level programming language.</summary>
    <tags>Python Programming Language</tags>
    <projectUrl>https://www.python.org/</projectUrl>
    <licenseUrl>https://docs.python.org/3/license.html</licenseUrl>
  </metadata>
  <files>
    <!-- Path to your Python installer -->
    <file src="tools\python-3.11.5.exe" target="tools" />
    <!-- Path to your PowerShell install script -->
    <file src="tools\chocolateyinstall.ps1" target="tools" />
  </files>
</package>
