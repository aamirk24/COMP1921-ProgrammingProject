#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Declaring global var for max dimensions
#define rows_max 100
#define cols_max 100

//Creating a struct to store the maze and player data in
//The 2d array stores the maze
//start, end and present store the co-ordinates for their respective fields
typedef struct
{
    char cells[rows_max][cols_max];
    int present[2];
    int start[2];
    int end[2];
    int num_rows;
    int num_cols;
    
} data_maze;

//Function to read a txt file
//Checks for right format and validity
//After reading, if the file is valid
//it'll store it within the struct
void readfile(char filename[50])
{
    FILE *f;
    f = fopen(filename, "r");

    if (f == NULL)
    {
        printf("Error: Invalid file\n");
        return;
    }

    char end[4];
    end == ".txt";

    if (strstr(filename,end) == NULL)
    {
        printf("Error: File type not supported\n");
    }

    fclose(f);
}

//Function to check if maze map is vali
//Checks if dimensions are below 100x100 and above 5x5
//Checks if the maze contains valid characters 
//Checks if there is one and only one Start and End
//Checks if shape of the map is a rectangle
int check_valid(char cells[rows_max][cols_max])
{
}

//Function to check for validity of keypress
//Checks for "m","w","a","s,"d" as inputs
//Opens map if "m" is pressed
//Updates the position of the player if movement is correct
void check_key(char key)
{
}

//Function to check for collision
//Input- Present position of the player
//Checks if a wall is next to player
//Output- Warning message not allowing the player to move into the wall
void check_collision(int present[2])
{
}

//Function to print the map
void view_map()
{
}

//main function has the appropriate args for a command line argument
int main(int argc, char *argv[])
{
    //Initialising variable as 0 to cross check if user has reached the end
    int check_end = 0;

    //Checking if the user has input a maze
    if (argc < 2)
    {
        printf("Error: no filename provided (./skeleton_code.c <filename>)\n");
    }

    //Calling the readfile() function with argv[1] as input
    readfile(argv[1]);

    //Calling check_valid() function to check if maze is valid
    //check_valid();

    //Calling the view_map() function to show the player the map and start position
    //view_map();

    //Implementing a while loop to handle inputs from the user
    while (exit == 0)
    {

        //Taking user input
        char input[1];
        scanf("%c",input);

        //Calling check_key() function to check validity of input
        //check_key();

        //Calling check_collision() function to check if user walked into a wall
        //check_collision();

        //Check if the user has reached the end and update value of check_end to 1

    }

    if (check_end == 1)
    {
        printf("Finish Reached.\n");
    }

    return 0;
}