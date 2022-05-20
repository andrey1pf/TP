//
//  person.h
//  main
//
//  Created by Andrey Goncharenko on 25.03.22.
//

#ifndef person_h
#define person_h

using namespace std;

struct Person{
    string Surname;
    string Name;
    string FAC;
    string SPEC;
    int GROUP;
    char DATE[10];
};

void sortArray();
void sortAndPrintFaculty();
void sortAndPrintSpec();
void sortAndPrintGroup();
void printSortArrayDate()

#endif /* person_h */

