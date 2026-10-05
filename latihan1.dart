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
  print('Pilih Pos Yang Ingin Diselesaikan : ');
  print('1. posa');
  print('2. posb');
  print('3. posc');
  stdout.write('Mau Pilih Pos Yang Mana : ');
  var inputselesai = int.parse(stdin.readLineSync()!);
  
  switch(inputselesai){

    case 1:
    if (posa['plat']==null){
          print('pos sudah kosong');
        }else {
          print('${posa['plat']} selesai !');
          posa['plat']=null;
          if(waitinglist.isNotEmpty){
            posa['plat']= waitinglist[0];
            waitinglist.removeAt(0);
          }
          
        }
        break;
      case 2:
        if (posb['plat']==null){
          print('pos sudah kosong');
        }else {
          print('${posb['plat']} selesai !');
          posb['plat']=null;
          if(waitinglist.isNotEmpty){
            posb['plat']= waitinglist[0];
            waitinglist.removeAt(0);
          }
        }
        break;
      case 3:
        if (posc['plat']==null){
          print('pos sudah kosong');
        }else {
          print('${posc['plat']} selesai !');
          posc['plat']=null;
          if(waitinglist.isNotEmpty){
            posc['plat']= waitinglist[0];
            waitinglist.removeAt(0);
          }
        }  
        break;
      default:
        print('tidak terdapat pilihan tersebut');
        selesaikanpos();
  }
}   


void keluarapp(){
  exit(0);
}


void validasi(){
  
  while (jalan == false){
    stdout.write('apakah anda ingin melanjutkan ptogram? Y/N = ');
    String inputvalid = stdin.readLineSync()?? '';

    if (inputvalid == 'Y'){
      jalan = true;
    }else if(inputvalid == 'N'){
     exit(0);
    }
  }
  
}

while(jalan==true){
	tampilmenu();
	stdout.write('Pilih Menu (1/2/3/4/5) : ');
  var input = int.parse(stdin.readLineSync()!);
  switch(input){
    case 1:
        tambahlist();
        jalan=false;
        validasi();
        break;
      case 2:
        lihatlist();
        jalan=false;
        validasi();
        break;
      case 3:
        lihatpos(); 
        jalan=false;
        validasi();
        break;
      case 4:
        selesaikanpos();
        jalan=false;
        validasi();
        break;
      case 5:
        keluarapp();  
      default:
       print('tidak ada pilihan tersebut');

  }
}


}

