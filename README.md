## asm_arm
  
本プログラムはJava仮想マシン上で動作するARM CPU用のアセンブラです。
  
##### [動作画面]
  ![enter image description here](https://imgur.com/HIyZYrq.jpg)  
  
##### [ビルド]
  
本プログラムをビルドするためには[ObjectEditor](https://github.com/kousoz80/ObjectEditor) が動作する環境が必要です。
  
  プロジェクトファイル"asm_arm.prj"をObjectEditorで開いてコンパイルボタンをクリックすればコンパイルが始まります。

  ##### [使用方法]
(1)実行可能ファイルを作成するには以下のようにタイプします。

java -jar asm_x64.jar [-list] ソースファイル名 [実行可能ファイル名]



・-listオプションでアセンブルリストを表示します  
  
・実行可能ファイル名を省略すると"a.out"が作成されます

##### [命令一覧]

ラベル名 equ 数値

・・・ラベルに数値を割り当てる


align 数値

・・・アドレスを指定値で割りきれる値にアライメントする


memory 数値

・・・指定バイト分のメモリ領域を確保する


byte 数値

・・・1バイト分領域を確保して指定値を入れる


short 数値

・・・2バイト分領域を確保して指定値を入れる


int 数値

・・・4バイト分領域を確保して指定値を入れる


long 数値

・・・4バイト分領域を確保して指定値を入れる


svc 数値

・・・システムコール


jmp アドレス

・・・アドレスにジャンプする




call アドレス

・・・アドレスをサブルーチンコールする




ret

・・・サブルーチンから復帰する


jc アドレス

jnc アドレス

jz アドレス

jnz アドレス

jlt アドレス

jle アドレス

jgt アドレス

jge アドレス

・・・条件ジャンプ命令



レジスタ=&数値

・・・レジスタに数値を入れる


レジスタ=数値

・・・レジスタに数値を入れる(ただし数値は0-255)


レジスタ1=レジスタ2+レジスタ3

レジスタ1=レジスタ2-レジスタ3

レジスタ1=レジスタ2&レジスタ3

レジスタ1=レジスタ2|レジスタ3

レジスタ1=レジスタ2^レジスタ3

レジスタ1-レジスタ2

レジスタ1&レジスタ2

・・・２つのレジスタ間で各オペレーションを実行する
C言語と同じ演算子を使います


レジスタ1=(レジスタ2)

・・・レジスタ1にレジスタ2が示すアドレスの内容を入れる
  
レジスタ1=(レジスタ2+レジスタ3)
  
レジスタ1=(レジスタ2+数値)



(レジスタ1)=レジスタ2

・・・レジスタ1が示すアドレスにレジスタ2の内容を入れる



nop

・・・なにもしない




