# bat
Windows上で個人的に使っているbatスクリプト

## backup.bat
バックアップ用bat。同じフォルダにtarget.txtを作成してバックアップ対象を記載する。

### target.txt記載例

```
#Backup1
D:\hoge
#Backup2
D:\foo
D:\bar
```
### バックアップのされ方
```
Backup1
　└hoge
Backup2
　├foo
　└bar
backup.bat
target.txt
```
