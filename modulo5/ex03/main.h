  
#ifndef MAIN_H
#define MAIN_H

    typedef struct {
        char age;
        short number;
        int grades[10];
        char name[80];
        char address[120];
    } Student;

	void fill_student(Student* s, char age, short number, char* name, char* address);

#endif
