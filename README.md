# npmpacker
For a given NPM node module, pack all dependencies in the dependency tree

Uwu! I need to pack all dependencies for a given node module to transfer into ze blasted offline environment!
And I mean every single dependency in the dependency tree!

I don't got American Time! don't got time to make into a smooth flawless single script!
Use in this order:

create_list.bat > clean_names.bat > npm_pack.bat

*Edit: create_list is the npx-remote-ls command to generate the nested dependencies for 1 npm module only.
You should probably magick your dependencies list into a list of npx-remote-ls commands. (See sample_commands_to_prepare.txt)
Then you can use the Powershell script (command_list_runner_powershell.ps1) to run each command sequentially, one after the other.
When that is done, then you run clean_names.bat, and THEN npm_pack.bat

Windows batch script! Only windows! Uwu!
And you need npx and the npx module (npx-remote-ls) as well!

Output: All packed modules (each in .tgz format) in ./packed_modules folder! 
