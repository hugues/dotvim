syntax on
color pablo

set title

set mouse=a
set mousem=extend
set tabstop=4
set shiftwidth=4

" Config spécifique pour les mails
autocmd BufRead /tmp/mutt-*[0-9] set textwidth=74
autocmd BufRead /tmp/mutt-*[0-9] color elflord

set guifont=LucidaTypewriter\ 8

" Transparent editing of gpg encrypted files.
" Placed Public Domain by Wouter Hanegraaff <wouter@blub.net>
" (asc support and sh -c"..." added by Osamu Aoki)
augroup aencrypted
    au!

    " First make sure nothing is written to ~/.viminfo while editing
    " an encrypted file.
    autocmd BufReadPre,FileReadPre      *.asc set viminfo=
    " We don't want a swap file, as it writes unencrypted data to disk
    autocmd BufReadPre,FileReadPre      *.asc set noswapfile
    " Switch to binary mode to read the encrypted file
    autocmd BufReadPre,FileReadPre      *.asc set bin
    autocmd BufReadPre,FileReadPre      *.asc let ch_save = &ch|set ch=2
    autocmd BufReadPost,FileReadPost    *.asc '[,']!sh -c "gpg --decrypt 2> /dev/null"
    " Switch to normal mode for editing
    autocmd BufReadPost,FileReadPost    *.asc set nobin
    autocmd BufReadPost,FileReadPost    *.asc let &ch = ch_save|unlet ch_save
    autocmd BufReadPost,FileReadPost    *.asc execute ":doautocmd BufReadPost " . expand("%:r")

    " Convert all text to encrypted text before writing
    autocmd BufWritePre,FileWritePre    *.asc   '[,']!sh -c "gpg --default-recipient-self -ae 2>/dev/null"
    " Undo the encryption so we are back in the normal text, directly
    " after the file has been written.
    autocmd BufWritePost,FileWritePost    *.asc   u
augroup END
augroup bencrypted
    au!

    " First make sure nothing is written to ~/.viminfo while editing
    " an encrypted file.
    autocmd BufReadPre,FileReadPre      *.gpg set viminfo=
    " We don't want a swap file, as it writes unencrypted data to disk
    autocmd BufReadPre,FileReadPre      *.gpg set noswapfile
    " Switch to binary mode to read the encrypted file
    autocmd BufReadPre,FileReadPre      *.gpg set bin
    autocmd BufReadPre,FileReadPre      *.gpg let ch_save = &ch|set ch=2
    autocmd BufReadPost,FileReadPost    *.gpg '[,']!sh -c "gpg --decrypt 2> /dev/null"
    " Switch to normal mode for editing
    autocmd BufReadPost,FileReadPost    *.gpg set nobin
    autocmd BufReadPost,FileReadPost    *.gpg let &ch = ch_save|unlet ch_save
    autocmd BufReadPost,FileReadPost    *.gpg execute ":doautocmd BufReadPost " . expand("%:r")

    " Convert all text to encrypted text before writing
    autocmd BufWritePre,FileWritePre    *.gpg   '[,']!sh -c "gpg --default-recipient-self -e 2>/dev/null"
    " Undo the encryption so we are back in the normal text, directly
    " after the file has been written.
    autocmd BufWritePost,FileWritePost    *.gpg   u
augroup END



" Function: Erase_Sig_but_Your()
" Purpose: Delete signatures at the end of e-mail replies. But keep
" your sig intact. (if mutt (or other MUA) had added it)
" Features: * Does not beep when no signature is found
" * Also deletes the empty lines (even those beginning by '>')
" preceding the signature.
" * keep your sig intact
" Author: Yann Kerhervé <yk@cyberion.net> based on Luc Hermitte
" <hermitte@free.fr> work

" here was my beeping macro :)
function! Erase_Sig_but_Your()
	" Search for the signature pattern : "^> -- $"
	let lastline = line ('$')
	let i = lastline
	" (1)
	while i >= 1
		if getline(i) =~ '^> *-- $'
			break
		endif
		let i = i - 1
	endwhile
	" let find the beginning of our sig
	let j = i
	while j < lastline
		let j = j + 1
		if getline(j) =~ '^-- $'
			let j = j - 1
			break
		endif
	endwhile
	" If (1) found, then
	if i != 0
		" First, search for the last non empty (non sig) line
		while i >= 1
			let i = i - 1
			" rem : i can't value 1
			if getline(i) !~ '^(>s*)*$'
				break
			endif
		endwhile
		" Second, delete these lines plus the signature
		let i = i + 1
		exe 'normal '.i.'Gd'.j.'G'
	endif
endfunction

autocmd BufRead /tmp/mutt-*[0-9] execute Erase_Sig_but_Your()
autocmd BufRead /tmp/mutt-*[0-9] map <ESC>n /^> $<CR>
autocmd BufRead /tmp/mutt-*[0-9] map ,n /^> $<CR>
autocmd BufRead /tmp/mutt-*[0-9] map <ESC>m ddO<CR>
autocmd BufRead /tmp/mutt-*[0-9] map <ESC>D ^d?^\([^>]\\|$\)?+<CR>O<ESC>
autocmd BufRead /tmp/mutt-*[0-9] map <ESC>d ^d/^-- $<CR>O<ESC>
autocmd BufRead /tmp/mutt-*[0-9] :normal ,n

