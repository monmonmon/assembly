## MoriokaReimenさんのLinuxでx86アセンブラシリーズ

- [Linuxでx86アセンブラ（浮動小数点編）](https://qiita.com/MoriokaReimen/items/8d3b0dddcc2a77ecdfa5)
- [Linuxでx86アセンブラ（BCD編）](http://qiita.com/MoriokaReimen/items/f66329680e98022c6bab)
- [Linuxでx86アセンブラ（条件分岐編）](http://qiita.com/MoriokaReimen/items/66b8c0e3b2ef1d2993bb)
- [Linuxでx86アセンブラ（マクロ編）](http://qiita.com/MoriokaReimen/items/45abbb6c2938abd505ff)
- [Linuxでx86アセンブラ（スタック編）](http://qiita.com/MoriokaReimen/items/31a8f8ce4a46ba0f3590)
- [Linuxでx86アセンブラ（基本的なコードの構造編）](http://qiita.com/MoriokaReimen/items/b320e6cc82c8873a602f)
- [Linuxでx86アセンブラ（論理演算編）](http://qiita.com/MoriokaReimen/items/bf863585616ad0a0a969)
- [Linuxでx86アセンブラ(四則演算編)](http://qiita.com/MoriokaReimen/items/4853587dcb9eb96fab62)
- [Linuxでx86アセンブラ(Cとの連携編)](http://qiita.com/MoriokaReimen/items/590a4ddb3de15bfacb4b)
- [Linuxでx86アセンブラ(道具編)](http://qiita.com/MoriokaReimen/items/b316a68d76c1eafa18f8)

コンパイル

```
p=float
nasm -g -felf64 $p.asm -o $p.o
gcc -g -no-pie $p.o -o $p
```

デバッグ

```
gdb -tui float
```
