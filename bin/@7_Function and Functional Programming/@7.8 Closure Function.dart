// closure [close over]

void main(){
  int x = 8;
  inner(){
    int i = 1; // to use closure for this int
    // print(x);
    int cl(){
      return i;
    }
    return cl();
  }
  // int ini = inner();
  print(inner());
  // print(inner());
}


/**
int z = 9;
void main(){
  int x = 8;
  {
    print(x);
    int y = 7;
  }
  // print(y);
  //Undefined name 'y'.
  // Try correcting the name to one that is defined, or defining the name
  print(z);
}
 */