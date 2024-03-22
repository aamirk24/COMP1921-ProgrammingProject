#!/bin/bash

# remove read permissions from this file - note: put them back at the end!
chmod -r data/bad_perms.csv

gcc maze_code.c -o maze_code

echo -e "~~ Maze Tests ~~"

echo -e "~~ Successful Tests ~~"

echo -n "Testing for valid file type - "
./maze_code ValidFileType.txt > tmp
if grep -q "File type is Valid" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for width less than 100 - "
./maze_code ValidFileType.txt > tmp
if grep -q "Width is less than 100" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for height less than 100 - "
./maze_code ValidFileType.txt > tmp
if grep -q "Height is less than 100" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for rectangular shape - "
./maze_code ValidFileType.txt > tmp
if grep -q "Maze is Rectangular" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for Start and End point - "
./maze_code ValidFileType.txt > tmp
if grep -q "Maze has a start and end point" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for a single Start point - "
./maze_code  ValidFileType.txt > tmp
if grep -q "File has a single start point" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for a single End point - "
./maze_code ValidFileType.txt > tmp
if grep -q "File has a single end point" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for valid characters in the maze - "
./maze_code ValidFileType.txt > tmp
if grep -q "File has valid characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for valid keypress - "
./maze_code > tmp
if grep -q "Valid Keypress" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for valid warning message upon walking into a wall - "
./maze_code > tmp
if grep -q "Valid warning message upon walking into a wall" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for equal width of columns and rows - "
./maze_code ValidFileType.txt > tmp
if grep -q "All rows and columns are of equal width" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for width greater than 5 - "
./maze_code ValidFileType.txt > tmp
if grep -q "Width is greater than 5" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for height greater than 5 - "
./maze_code ValidFileType.txt > tmp
if grep -q "Height is greater than 5" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -e "~~ Unsuccessful Tests ~~"

echo -n "Testing for invalid file type - "
./maze_code InvalidtextFile.csv > tmp
if grep -q "File type is invalid" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for width greater than 100 - "
./maze_code MaxWidthMaze.txt > tmp
if grep -q "Width is greater than 100" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for height greater than 100 - "
./maze_code MaxHeightMaze.txt > tmp
if grep -q "Height is greater than 100" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for not rectangular shape - "
./maze_code WrongShapeMaze.txt > tmp
if grep -q "Maze is not Rectangular" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for no Start and End point - "
./maze_code NoStartEndPoint.txt > tmp
if grep -q "Maze has no start and end point" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for multiple Start points - "
./maze_code  MultiplePoints.txt > tmp
if grep -q "File has multiple start points" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for multiple End points - "
./maze_code MultiplePoints.txt > tmp
if grep -q "File has multiple end points" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for invalid characters in the maze - "
./maze_code MultiplePoints.txt> tmp
if grep -q "File has invalid characters" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for o Start Point - "
./maze_code NoStartPoint.txt > tmp
if grep -q "No Start Point Found" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for invalid warning message upon walking into a wall - "
./maze_code > tmp
if grep -q "Invalid warning message upon walking into a wall" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for unequal width of columns and rows - "
./maze_code MultiplePoints.txt > tmp
if grep -q "Rows and columns are of unequal width" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for width less than 5 - "
./maze_code MinWidthMaze.txt > tmp
if grep -q "Width is less than 5" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing for height less than 5 - "
./maze_code MinHeightMaze.txt > tmp
if grep -q "Height is less than 5" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi