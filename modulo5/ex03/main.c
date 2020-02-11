#include <stdio.h>
#include "main.h"

int main(int argc, char **argv) {

    Student stu;

    Student* ptr = &stu;

    fill_student(ptr, 28, 10, "Diogo", "Porto");

    printf("%d\n", ptr->age);
    printf("%d\n", ptr->number);
    printf("%s\n", ptr->name);
    printf("%s\n", ptr->address);
    return 0;
    
}

