# Description

Simple wrapper that allows to import multiple nmap xml files in lair in one shot using drone-nmap. Some dirty hack is included to bypass some spurious import error that sometimes happen for some reason...

# Usage

`lair-batch-drone-nmap.sh <LAIR_ID> <XML FILES>`

`<XML FILES>` can be a folder, a regexp or anything that the shell will be able to expand as a list of files. If it is a folder, it shall only contain xml files otherwise the import will fail on non nmap-xml files.
