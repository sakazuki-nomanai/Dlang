import std.stdio, std.string;

void main()
{
    write("あなたは喉が渇いている？(Y/N)---");
    bool isThirsty = readln().chomp() == "Y";

    if(isThirsty){
        write("自販機がある？(Y/N)---");
        bool isPlaced = readln().chomp() == "Y";

        if(isPlaced){
            write("あなたの所持金は？[円]---");
            int pocketMoney;
            readf("%s\n", &pocketMoney);

            write("あなたが欲しい飲み物の値段は？[円]---");
            int price = void;
            readf("%s\n", &price);

            if(price <= pocketMoney){
                writeln("あなたは自販機で買ってしまった。");
                writefln("もう%s[円]しかない。", pocketMoney - price);
            }else{
                writeln("あなたは購入できなかった。");
                writeln("次第に渇きが我慢できないほどになってきた。");
                writeln("数時間後、そこには意識のないあなたの姿が…");
            }
        }else{
            writeln("次第に渇きが我慢できないほどになってきた。");
            writeln("数時間後、そこには意識のないあなたの姿が…");
        }
    }else
        writeln("のどが渇いている気がしたが、ちゃんと考えればそうでもなかった。");
}
