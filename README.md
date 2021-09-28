# PowerShellOpenSolutionInVisualStudio

PowerShell command to open .sln file in Visual Studio from current directory,  
if no .sln file in current directory, then it will look one folder level lower.  

To make the command available using e.g. PowerShell or cmder use (PS2EXE)[https://github.com/MScholtes/PS2EXE]  
Then add the path to the exe file to `Environment Variables`.  

If you want a similar command in Git Bash, follow this guide from (codeburst)[https://codeburst.io/learn-how-to-create-custom-bash-commands-in-less-than-4-minutes-6d4ceadd9590]  
and insert the following to `custom_aliases`:  
``` SHELL
alias d='start $(find . -type f -name "*.sln")'
```