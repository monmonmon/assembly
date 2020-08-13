## macでアセンブリ

[初学者向け x86/MacOSX 64bit アセンブリ - Qiita](https://qiita.com/yyasuda/items/3072f10d45cc4c0930f7)

コンパイル

```
p=add_exit; cc $p.s
```

アセンブル＆リンク

```
p=add_exit; as -o $p.o $p.s && ld -lSystem $p.o -o $p
```
