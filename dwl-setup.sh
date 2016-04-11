#!/bin/bash
chmod -R 700 /tmp

echo "<<<<< LIST /TMP SETUP FILES";
ls -lah /tmp;
echo ">>>>>";

echo "##### START INITIALIZATION #####";
for init in `ls /tmp | grep dwl-setup- | sort -r`;
do
    echo "<<<<< Initialization of /tmp/$init";
    "/tmp/$init";
    echo ">>>>>";
done;

echo "##### END OF INITIALIZATION #####";
# tail -f /dev/null;