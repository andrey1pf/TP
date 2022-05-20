//
//  main.cpp
//  main
//
//  Created by Andrey Goncharenko on 19.03.22.
//

#include <iostream>
#include <ctime>
#include <vector>
#include <cmath>
#include "person.h"

using namespace std;

int n = 5;
Person VUZ[5] = {};

void sortArray(){
    for(int j = 0; j < pow(n, n); ++j){
        for(int i = 0; i < n; ++i){
            if(i != n-1){
                Person name1 = VUZ[i];
                Person name2 = VUZ[i+1];
                string date1 = VUZ[i].DATE;
                string date2 = VUZ[i+1].DATE;
                
                int day1 = (int)(date1[0])*10+(int)(date1[1]);
                int day2 = (int)(date2[0])*10+(int)(date2[1]);
                
                int month1 = (int)(date1[3])*10+(int)(date1[4]);
                int month2 = (int)(date1[3])*10+(int)(date1[4]);
                
                int year1 = (int)(date1[6])*1000+(int)(date1[7])*100+(int)(date1[8])*10+(int)(date1[9]);
                int year2 = (int)(date2[6])*1000+(int)(date2[7])*100+(int)(date2[8])*10+(int)(date2[9]);
                
                if(year2 < year1){
                    VUZ[i]=name2;
                    VUZ[i+1]=name1;
                }
                if(year1 == year2){
                    if(month2 < month1){
                        VUZ[i]=name2;
                        VUZ[i+1]=name1;
                    }
                    
                    if(month2 == month1){
                        if(day2 < day1){
                            VUZ[i]=name2;
                            VUZ[i+1]=name1;
                        }
                    }
                }
            }
        }
    }
    for(int j = pow(n,n); j>0; --j){
        for(int i = n - 1; i > 0; --i){
            if(i!=0){
                Person name1 = VUZ[i];
                Person name2 = VUZ[i-1];
                string date1 = VUZ[i].DATE;
                string date2 = VUZ[i-1].DATE;
                
                int day1 = (int)(date1[0])*10+(int)(date1[1]);
                int day2 = (int)(date2[0])*10+(int)(date2[1]);
                
                int month1 = (int)(date1[3])*10+(int)(date1[4]);
                int month2 = (int)(date1[3])*10+(int)(date1[4]);
                
                int year1 = (int)(date1[6])*1000+(int)(date1[7])*100+(int)(date1[8])*10+(int)(date1[9]);
                int year2 = (int)(date2[6])*1000+(int)(date2[7])*100+(int)(date2[8])*10+(int)(date2[9]);
                
                if(year2 > year1){
                    VUZ[i]=name2;
                    VUZ[i-1]=name1;
                }
                if(year1 == year2){
                    if(month2 > month1){
                        VUZ[i]=name2;
                        VUZ[i-1]=name1;
                    }
                    
                    if(month2 == month1){
                        if(day2 > day1){
                            VUZ[i]=name2;
                            VUZ[i-1]=name1;
                        }
                    }
                }
            }
        }
    }
}

void sortAndPrintFaculty(){
    cout << "print faculty-sort" << endl;
    vector<string> arrayFaculty;
    for(int i = 0; i < n; ++i){
        string a = VUZ[i].FAC;
        bool check = false;
        for(int j = 0; j < arrayFaculty.size(); ++j){
            if(a == arrayFaculty[j]){
                check = true;
                break;
            }
        }
        if(check == false) arrayFaculty.push_back(a);
    }
    
    for(int j = 0; j < arrayFaculty.size(); ++j){
        string fac = arrayFaculty[j];
        for(int i = 0; i < n; ++i){
            if(fac == VUZ[i].FAC){
                cout <<
                VUZ[i].DATE << "   " <<
                VUZ[i].Surname << "   " <<
                VUZ[i].Name << "   " <<
                VUZ[i].FAC << "   " <<
                VUZ[i].SPEC << "   " <<
                VUZ[i].GROUP <<
                endl;
            }
        }
        
        cout << "----------------------" << endl;
    }
}

void sortAndPrintSpec(){
    cout << "print spec-sort" << endl;
    vector<string> arraySpec;
    for(int i = 0; i < n; ++ i){
        string b = VUZ[i].SPEC;
        bool check = false;
        for(int j = 0; j < arraySpec.size(); ++j){
            if(b == arraySpec[j]){
                check = true;
                break;
            }
        }
        if(check == false) arraySpec.push_back(b);
    }
    
    for(int j = 0; j < arraySpec.size(); ++j){
        string spec = arraySpec[j];
        for(int i = 0; i < n; ++i){
            if(spec == VUZ[i].SPEC){
                cout <<
                VUZ[i].DATE << "   " <<
                VUZ[i].Surname << "   " <<
                VUZ[i].Name << "   " <<
                VUZ[i].FAC << "   " <<
                VUZ[i].SPEC << "   " <<
                VUZ[i].GROUP <<
                endl;
            }
        }
        
        cout << "----------------------" << endl;
    }
}

void sortAndPrintGroup(){
    cout << "print group-sort" <<  endl;
    vector<int> arrayGroup;
    for(int i = 0; i < n; ++ i){
        int c = VUZ[i].GROUP;
        bool check = false;
        for(int j = 0; j < arrayGroup.size(); ++j){
            if(c == arrayGroup[j]){
                check = true;
                break;
            }
        }
        if(check == false) arrayGroup.push_back(c);
    }
    
    for(int j = 0; j < arrayGroup.size(); ++j){
        int group = arrayGroup[j];
        for(int i = 0; i < n; ++i){
            if(group == VUZ[i].GROUP){
                cout <<
                VUZ[i].DATE << "   " <<
                VUZ[i].Surname << "   " <<
                VUZ[i].Name << "   " <<
                VUZ[i].FAC << "   " <<
                VUZ[i].SPEC << "   " <<
                VUZ[i].GROUP <<
                endl;
            }
        }
        
        cout << "----------------------" << endl;
    }
}

void printSortArrayDate(){
    cout << "print student with date-sort" << endl;
    for(int i =0;i<n; ++i){
        cout <<
        VUZ[i].DATE << "   " <<
        VUZ[i].Surname << "   " <<
        VUZ[i].Name << "   " <<
        VUZ[i].FAC << "   " <<
        VUZ[i].SPEC << "   " <<
        VUZ[i].GROUP <<
        endl;
    }
}

int main(int argc, const char * argv[]) {
    for(int i = 0; i < n; ++i){
        cout << "enter surname" << endl;
        cin >> VUZ[i].Surname;
        cout << "enter name" << endl;
        cin >> VUZ[i].Name;
        //cin.getline(VUZ[i].SNO, 32);
        cout << "enter faculty" << endl;
        cin >> VUZ[i].FAC;
        cout << "enter specification" << endl;
        cin >> VUZ[i].SPEC;
        cout << "enter group number" << endl;
        cin >> VUZ[i].GROUP;
        cout << "enter date" << endl;
        cin >> VUZ[i].DATE;
        cout << "----------------------" << endl;
    }
    
    sortArray();
    printSortArrayDate();
    cout << endl;
    cout << endl;
    sortAndPrintFaculty();
    cout << endl;
    cout << endl;
    sortAndPrintSpec();
    cout << endl;
    cout << endl;
    sortAndPrintGroup();
    
    return 0;
}

