import 'dart:io';

void main(){

 var jalan = true;

 Map posa={'plat':null};
 Map posb={'plat':null};
 Map posc={'plat':null};

List waitinglist=[];

void tampilmenu(){
  print('========================');
  print('Wash & Clean');
  print('========================');
  print('1. Tambah Waiting List');
  print('2. Lihat Waiting List');
  print('3. Lihat Pos');
  print('4. Selesaikan Pos');
  print('5. Keluar Dari Aplikasi');
  print('========================');
}
tampilmenu();

void tambahlist(){
stdout.write('Tambah Waiting List : ');
var inputpos = stdin.readLineSync()!;
  if(posa['plat']==null){ 
    posa['plat'] = inputpos;
  }else if (posb['plat']==null){
    posb['plat'] = inputpos;
  }else if (posc['plat']==null){
    posc['plat'] = inputpos;
  }else
    waitinglist.add(inputpos);
}

void lihatlist(){
  for (var i = 0; i < waitinglist.length; i++){
    print('${waitinglist[i]}');
    
  }
}

void lihatpos(){
  print(posa['plat']);
  print(posb['plat']);
  print(posc['plat']);
}

void selesaikanpos(){
  print('1. posa');
  print('2. posb');
  print('3. posc');
  stdout.write('Mau Pilih Pos Yang Mana : ');
  var input = int.parse(stdin.readLineSync()!);
  switch(input){
    case 1 :
    print('${posa['plat']}');
    case 2 : 
    print('${posb['plat']}');
    case 3 :
    print('${posc['plat']}');
    }

  switch(input){
    case 1 :
    
    
  }

}

while(jalan==true){
	tampilmenu();
	stdout.write('Pilih Menu (1/2/3/4/5) : ');
  var input = int.parse(stdin.readLineSync()!);
  switch(input){
    case 1:
    tambahlist();
    break;

    case 2:
    lihatlist();
    break;

    case 3:
    lihatpos();
    break;

    case 4:

  }
}





}