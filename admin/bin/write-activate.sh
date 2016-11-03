#!/bin/bash

TOOL_ROOT=$(cd "$(dirname "$0")";cd ../..; pwd)
ADMIN=$(cd "$(dirname "$0")";cd ..; pwd)

echo "# This file must be used with \"source activate\" *from bash*" > $ADMIN/activate
echo "# you cannot run it directly" >> $ADMIN/activate
echo "#" >> $ADMIN/activate
echo "# Also, don't try to edit this file, since this is generated from activate.in" >> $ADMIN/activate
echo TOOL_ROOT=$TOOL_ROOT >> $ADMIN/activate
echo ADMIN=$ADMIN >> $ADMIN/activate
cat $ADMIN/activate.in >> $ADMIN/activate
