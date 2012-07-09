"背景色を変更する(:syntax enableより前に配置する事)
":set background=dark
"カラースキームを変更する。(例は、eveningに変更)
":colorscheme evening
"構文強調表示を開始する。
:syntax enable
" recase' を上書きする。（有効:smartcase/無効:nosmartcase）
:set smartcase
" ファイル内の <Tab> が対応する空白の数。
" <Tab> の挿入や <BS> の使用等の編集操作をするときに、<Tab>が対応する空白の数。
:set softtabstop=4
" インデントの各段階に使われる空白の数。
:set shiftwidth=4
" Insertモードで <Tab>を挿入するとき、代わりに適切な数の空白を使う。（有効:expandtab/無効:noexpandtab）
:set noexpandtab
" 入力されているテキストの最大幅。行がそれより長くなると、この幅を超えないように空白の後で改行される。値を0 に設定すると無効になる。
:set textwidth=0
" dq" 新しい行を開始したとき (Insertモードで <CR> を打ち込むか、コマンド "o"や"O"を使ったとき)、新しい行のインデントを現在行と同じくする。（有効:autoindent/無効:noautoindent）
:set autoindent
" オンのときは、ウィンドウの幅より長い行は折り返され、次の行に続けて表示される。（有効:wrap/無効:nowrap）
:set wrap
"  検索がファイル末尾まで進んだら、ファイル先頭から再び検索する。（有効:wrapscan/無効:nowrapscan）
:set wrapscan
" オンのとき、コマンドライン補完が拡張モードで行われる。（有効:wildmenu/無効:nowildmenu）
:set wildmenu
" 閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする。（有効:showmatch/無効:noshowmatch）
:set showmatch
" 毎行の前に行番号を表示する。（有効:number/無効:nonumber）
:set number
" カーソルが何行目の何列目に置かれているかを表示する。（有効:ruler/無効:noruler）
:set ruler
" タブ文字を CTRL-I で表示し、行末に $ で表示する。（有効:list/無効:nolist）
:set list
" Listモード (訳注: オプション 'list' がオンのとき)に使われる文字を設定する。
:set listchars=tab:>-,extends:<,trail:-,eol:<
" 最下ウィンドウにいつステータス行が表示されるかを設定する。
"               0: 全く表示しない
"               1: ウィンドウの数が2以上のときのみ表示
"               2: 常に表示
:set laststatus=2
" コマンド (の一部)を画面の最下行に表示する。（有効:showcmd/無効:noshowcmd）
:set showcmd
"ファイルを上書きする前にバックアップを作る。書き込みが成功してもバックアップはそのまま取っておく。（有効:backup/無効:nobackup）
:set nobackup
" ファイルの上書きの前にバックアップを作る。オプション 'backup'がオンでない限り、バックアップは上書きに成功した後削除される。（有効:writebackup/無効:nowritebackup）
:set writebackup
"ファイルタイプの検出　プラグイン　インデントの仕様
:filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""
"javacomplete設定
"Set 'omnifunc' option. e.g.
":setlocal omnifunc=javacomplete#Complete
"Set 'omnifunc' option
:if has("autocmd")
:  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
:endif
"JavaCompleteをGroovyでも有効にする
:if has("autocmd")
:  autocmd Filetype groovy setlocal omnifunc=javacomplete#Complete
:endif
"JavaCompleteをGradleでも有効にする
:if has("autocmd")
:  autocmd Filetype gradle setlocal omnifunc=javacomplete#Complete
:endif
"Set 'completefunc' option to show parameters information IF YOU LIKE. e.g.
:setlocal completefunc=javacomplete#CompleteParamsInfo
"You can map as follows for better display:
:inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
:inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
