" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file inspi01 from pablo
" Maintainer:	Hugues Hiegel <hugues@hiegel.fr>
" Last Change:	2008 July 04

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "red"

if has("gui_running") || &t_Co >= 255

"SpecialKey     xxx term=bold ctermfg=236
"NonText        xxx term=bold cterm=bold ctermfg=0
"Directory      xxx term=bold ctermfg=2
"ErrorMsg       xxx term=standout ctermfg=15 ctermbg=1
"IncSearch      xxx term=reverse cterm=bold ctermfg=190 ctermbg=34
"Search         xxx term=reverse cterm=bold ctermfg=190
"MoreMsg        xxx term=bold ctermfg=239
"ModeMsg        xxx term=bold cterm=bold
"LineNr         xxx term=bold,reverse cterm=bold ctermfg=236
"Question       xxx term=standout ctermfg=209
"StatusLine     xxx term=bold,reverse cterm=bold,reverse
"                   links to StatusLineCMD
"StatusLineNC   xxx term=reverse cterm=bold ctermfg=8
"VertSplit      xxx term=reverse ctermfg=8
"Title          xxx term=bold cterm=bold ctermfg=3
"Visual         xxx term=reverse ctermbg=0
"VisualNOS      xxx cleared
"WarningMsg     xxx term=standout ctermfg=224
"WildMenu       xxx term=reverse cterm=bold ctermfg=3 ctermbg=0
"Folded         xxx term=reverse cterm=bold ctermfg=0
"FoldColumn     xxx term=standout ctermfg=14 ctermbg=242
"                   links to Folded
"DiffAdd        xxx term=bold ctermbg=0
"DiffChange     xxx term=bold ctermbg=0
"DiffDelete     xxx term=reverse ctermfg=0
"DiffText       xxx ctermbg=88
"SignColumn     xxx term=standout ctermfg=14 ctermbg=242
"SpellBad       xxx term=reverse cterm=bold ctermfg=160 ctermbg=52
"SpellCap       xxx term=reverse ctermfg=1
"SpellRare      xxx term=reverse cterm=bold ctermfg=68 ctermbg=160
"SpellLocal     xxx term=underline cterm=bold ctermfg=2 ctermbg=14
"Pmenu          xxx ctermbg=13
"PmenuSel       xxx ctermbg=242
"PmenuSbar      xxx ctermbg=248
"PmenuThumb     xxx cterm=reverse
"TabLine        xxx term=underline cterm=underline ctermfg=0
"TabLineSel     xxx term=bold cterm=bold ctermfg=160 ctermbg=88
"TabLineFill    xxx term=reverse cterm=reverse
"                   links to TabLine
"CursorColumn   xxx term=reverse ctermbg=236
"CursorLine     xxx term=underline ctermbg=0
"MatchParen     xxx term=reverse cterm=bold ctermfg=3
"Comment        xxx term=bold cterm=bold ctermfg=238
"Constant       xxx term=underline cterm=bold ctermfg=94
"Special        xxx term=bold ctermfg=160 ctermbg=236
"Identifier     xxx term=underline cterm=bold ctermfg=1
"Statement      xxx term=bold cterm=bold ctermfg=160
"PreProc        xxx term=underline ctermfg=244 ctermbg=236
"Type           xxx term=underline cterm=bold ctermfg=9
"Underlined     xxx term=underline cterm=underline ctermfg=81
"Ignore         xxx ctermfg=0
"Error          xxx term=reverse cterm=bold ctermfg=1 ctermbg=1
"Todo           xxx term=standout cterm=bold ctermfg=220 ctermbg=28
"String         xxx ctermfg=238 ctermbg=0
"Character      xxx links to Constant
"Number         xxx cterm=bold ctermfg=196
"Boolean        xxx links to Constant
"Float          xxx links to Number
"Function       xxx cterm=bold ctermfg=1
"Conditional    xxx ctermfg=160
"Repeat         xxx links to Statement
"Label          xxx cterm=bold ctermfg=1
"Operator       xxx links to Statement
"Keyword        xxx links to Statement
"Exception      xxx links to Statement
"Include        xxx links to PreProc
"Define         xxx links to PreProc
"Macro          xxx links to PreProc
"PreCondit      xxx links to PreProc
"StorageClass   xxx links to Type
"Structure      xxx links to Type
"Typedef        xxx links to Type
"Tag            xxx links to Special
"SpecialChar    xxx links to Special
"Delimiter      xxx links to Special
"SpecialComment xxx links to Special
"Debug          xxx links to Special
"cStatement     xxx links to Statement
"cConditional   xxx ctermfg=160
"cLabel         xxx links to Label
"cDefine        xxx ctermfg=244
"cType          xxx cterm=underline ctermfg=9
"cFormat        xxx cterm=bold ctermfg=1
"StatusLineCMD  xxx term=bold,reverse cterm=bold ctermfg=160
"StatusLineINS  xxx term=bold,reverse cterm=bold ctermfg=9
"User1          xxx term=underline,reverse cterm=bold ctermfg=1
"User2          xxx term=bold cterm=bold ctermfg=3
"User3          xxx term=bold cterm=bold ctermfg=236 ctermbg=0
"User4          xxx term=bold ctermfg=88
"makeCommands   xxx ctermfg=86 ctermbg=0
"todoTitle1     xxx cterm=bold ctermfg=3
"todoTitle2     xxx cterm=bold ctermfg=9
"todoTitle3     xxx cterm=bold ctermfg=36
"todoTitle4     xxx cterm=bold ctermfg=10
"todoTask1      xxx cleared
"todoTask2      xxx ctermfg=248
"todoTask3      xxx ctermfg=242
"todoTask4      xxx ctermfg=238
"todoTaskDone   xxx ctermfg=16
"todoSubDone    xxx cterm=standout ctermfg=16
"todoImportant  xxx cterm=bold
"todoLink       xxx cterm=underline ctermfg=160 ctermbg=88
"rtTicket       xxx cterm=standout ctermfg=208
"todoDiggle     xxx cterm=bold ctermfg=236
"todoMark       xxx cterm=bold ctermfg=236 ctermbg=8
"cRepeat        xxx links to Repeat
"cTodo          xxx links to Todo
"cSpecial       xxx links to SpecialChar
"cString        xxx links to String
"cCppString     xxx links to cString
"cCharacter     xxx links to Character
"cSpecialError  xxx links to cError
"cSpecialCharacter xxx links to cSpecial
"cCurlyError    xxx links to cError
"cErrInParen    xxx links to cError
"cCppParen      xxx cleared
"cErrInBracket  xxx links to cError
"cCppBracket    xxx cleared
"cBlock         xxx cleared
"cParenError    xxx links to cError
"cIncluded      xxx links to cString
"cCommentSkip   xxx links to cComment
"cCommentString xxx links to cString
"cComment2String xxx links to cString
"cCommentStartError xxx links to cError
"cUserCont      xxx cleared
"cUserLabel     xxx links to Label
"cBitField      xxx cleared
"cOctalZero     xxx links to PreProc
"cCppOut        xxx links to Comment
"cCppOut2       xxx links to cCppOut
"cCppSkip       xxx links to cCppOut
"cNumber        xxx links to Number
"cFloat         xxx links to Float
"cOctal         xxx links to Number
"cOctalError    xxx links to cError
"cNumbersCom    xxx cleared
"cParen         xxx cleared
"cBracket       xxx cleared
"cNumbers       xxx cleared
"cSpaceError    xxx links to cError
"cCommentL      xxx links to cComment
"cCommentStart  xxx links to cComment
"cComment       xxx links to Comment
"cCommentError  xxx links to cError
"cOperator      xxx links to Operator
"cStructure     xxx links to Structure
"cStorageClass  xxx links to StorageClass
"cConstant      xxx links to Constant
"cPreCondit     xxx links to PreCondit
"cInclude       xxx links to Include
"cMulti         xxx cleared
"cPreProc       xxx links to PreProc
"cError         xxx links to Error
"ExtraWhitespace xxx ctermfg=0 ctermbg=9
"todoMarkee     xxx cleared
"Column71       xxx ctermfg=70
"Column80       xxx ctermfg=82
"mailHeaderKey  xxx links to Type
"mailSubject    xxx links to LineNr
"mailHeaderEmail xxx links to mailEmail
"mailEmail      xxx links to Special
"mailURL        xxx links to String
"mailQuoteExp1  xxx links to mailQuoted1
"mailQuoted1    xxx ctermfg=249
"mailQuoteExp2  xxx links to mailQuoted2
"mailQuoted2    xxx ctermfg=245
"mailQuoteExp3  xxx links to mailQuoted3
"mailQuoted3    xxx ctermfg=240
"mailQuoteExp4  xxx links to mailQuoted4
"mailQuoted4    xxx ctermfg=237
"mailQuoteExp5  xxx links to mailQuoted5
"mailQuoted5    xxx ctermfg=234
"mailQuoteExp6  xxx links to mailQuoted6
"mailQuoted6    xxx ctermfg=232
"mailHeader     xxx links to Statement
"mailSignature  xxx links to PreProc
"vimTodo        xxx links to Todo
"vimCommand     xxx links to Statement
"vimOption      xxx links to PreProc
"vimErrSetting  xxx links to vimError
"vimAutoEvent   xxx links to Type
"vimGroup       xxx links to Type
"vimHLGroup     xxx links to vimGroup
"vimFuncName    xxx links to Function
"vimNumber      xxx links to Number
"vimAddress     xxx links to vimMark
"vimAutoCmd     xxx links to vimCommand
"vimExtCmd      xxx cleared
"vimFilter      xxx cleared
"vimLet         xxx links to vimCommand
"vimMap         xxx links to vimCommand
"vimMark        xxx links to Number
"vimSet         xxx cleared
"vimSyntax      xxx links to vimCommand
"vimUserCmd     xxx cleared
"vimCmdSep      xxx cleared
"vimIsCommand   xxx cleared
"vimVar         xxx cleared
"vimInsert      xxx links to vimString
"vimBehaveModel xxx links to vimBehave
"vimBehaveError xxx links to vimError
"vimBehave      xxx links to vimCommand
"vimFTCmd       xxx links to vimCommand
"vimFTOption    xxx links to vimSynType
"vimFTError     xxx links to vimError
"vimFiletype    xxx cleared
"vimFunction    xxx cleared
"vimFunctionError xxx links to vimError
"vimLineComment xxx links to vimComment
"vimSpecFile    xxx links to Identifier
"vimOper        xxx links to Operator
"vimComment     xxx links to Comment
"vimString      xxx links to String
"vimSubst       xxx links to vimCommand
"vimRegister    xxx links to SpecialChar
"vimCmplxRepeat xxx links to SpecialChar
"vimRegion      xxx cleared
"vimSynLine     xxx cleared
"vimNotation    xxx links to Special
"vimCtrlChar    xxx links to SpecialChar
"vimFuncVar     xxx links to Identifier
"vimContinue    xxx links to Special
"vimAugroupKey  xxx links to vimCommand
"vimAugroup     xxx cleared
"vimAugroupError xxx cleared
"vimOperParen   xxx cleared
"vimSep         xxx links to Delimiter
"vimOperError   xxx links to Error
"vimFuncKey     xxx links to vimCommand
"vimFuncSID     xxx links to Special
"vimEcho        xxx cleared
"vimEchoHL      xxx links to vimCommand
"vimExecute     xxx cleared
"vimIf          xxx cleared
"vimFunc        xxx links to vimError
"vimNorm        xxx links to vimCommand
"vimNotFunc     xxx links to vimCommand
"vimUserCommand xxx links to vimCommand
"vimFuncBlank   xxx cleared
"vimFuncBody    xxx cleared
"vimPattern     xxx links to Type
"vimSpecFileMod xxx links to vimSpecFile
"vimHighlight   xxx links to vimCommand
"vimEscapeBrace xxx cleared
"vimSetEqual    xxx cleared
"vimSetString   xxx links to vimString
"vimSubstRep    xxx cleared
"vimSubstRange  xxx cleared
"vimUserAttrb   xxx links to vimSpecial
"vimUserAttrbKey xxx links to vimOption
"vimUserAttrbCmplt xxx links to vimSpecial
"vimUserCmdError xxx links to Error
"vimUserAttrbCmpltFunc xxx links to Special
"vimCommentString xxx links to vimString
"vimEnvvar      xxx links to PreProc
"vimPatSepErr   xxx links to vimPatSep
"vimPatSep      xxx links to SpecialChar
"vimPatSepZ     xxx links to vimPatSep
"vimPatSepZone  xxx links to vimString
"vimPatSepR     xxx links to vimPatSep
"vimPatRegion   xxx cleared
"vimNotPatSep   xxx links to vimString
"vimStringCont  xxx links to vimString
"vimSubstTwoBS  xxx links to vimString
"vimSubstSubstr xxx links to SpecialChar
"vimCollection  xxx cleared
"vimSubstPat    xxx cleared
"vimSubst1      xxx links to vimSubst
"vimSubstDelim  xxx links to Delimiter
"vimSubstRep4   xxx cleared
"vimSubstFlagErr xxx links to vimError
"vimCollClass   xxx cleared
"vimCollClassErr xxx links to vimError
"vimSubstFlags  xxx links to Special
"vimMarkNumber  xxx links to vimNumber
"vimPlainMark   xxx links to vimMark
"vimPlainRegister xxx links to vimRegister
"vimSetMod      xxx links to vimOption
"vimSetSep      xxx links to Statement
"vimAbb         xxx links to vimCommand
"vimMapMod      xxx links to vimBracket
"vimMapLhs      xxx cleared
"vimAutoCmdSpace xxx cleared
"vimAutoEventList xxx cleared
"vimAutoCmdSfxList xxx cleared
"varVar         xxx cleared
"vimEchoHLNone  xxx links to vimGroup
"vimMapBang     xxx links to vimCommand
"vimMapRhs      xxx cleared
"vimMapModKey   xxx links to vimFuncSID
"vimMapModErr   xxx links to vimError
"vimMapRhsExtend xxx cleared
"vimMenuBang    xxx cleared
"vimMenuPriority xxx cleared
"vimMenuName    xxx links to PreProc
"vimMenuMod     xxx links to vimMapMod
"vimMenuNameMore xxx links to vimMenuName
"vimMenuMap     xxx cleared
"vimMenuRhs     xxx cleared
"vimBracket     xxx links to Delimiter
"vimUserFunc    xxx links to Normal
"vimElseIfErr   xxx links to Error
"vimBufnrWarn   xxx links to vimWarn
"vimNormCmds    xxx cleared
"vimGroupSpecial xxx links to Special
"vimGroupList   xxx cleared
"vimSynError    xxx links to Error
"vimSynContains xxx links to vimSynOption
"vimSynKeyContainedin xxx links to vimSynContains
"vimSynNextgroup xxx links to vimSynOption
"vimSynType     xxx links to vimSpecial
"vimAuSyntax    xxx cleared
"vimSynCase     xxx links to Type
"vimSynCaseError xxx links to vimError
"vimClusterName xxx cleared
"vimGroupName   xxx cleared
"vimGroupAdd    xxx links to vimSynOption
"vimGroupRem    xxx links to vimSynOption
"vimSynKeyOpt   xxx links to vimSynOption
"vimSynKeyRegion xxx cleared
"vimMtchComment xxx links to vimComment
"vimSynMtchOpt  xxx links to vimSynOption
"vimSynRegPat   xxx links to vimString
"vimSynMatchRegion xxx cleared
"VimSynMtchCchar xxx cleared
"vimSynPatRange xxx links to vimString
"vimSynNotPatRange xxx links to vimSynRegPat
"vimSynRegOpt   xxx links to vimSynOption
"vimSynReg      xxx links to Type
"vimSynMtchGrp  xxx links to vimSynOption
"vimSynRegion   xxx cleared
"vimSynPatMod   xxx cleared
"vimSyncC       xxx links to Type
"vimSyncLines   xxx cleared
"vimSyncMatch   xxx cleared
"vimSyncError   xxx links to Error
"vimSyncLinebreak xxx cleared
"vimSyncLinecont xxx cleared
"vimSyncRegion  xxx cleared
"vimSyncGroupName xxx links to vimGroupName
"vimSyncKey     xxx links to Type
"vimSyncGroup   xxx links to vimGroupName
"vimSyncNone    xxx links to Type
"vimHiLink      xxx cleared
"vimHiClear     xxx cleared
"vimHiKeyList   xxx cleared
"vimHiBang      xxx cleared
"vimHiGroup     xxx links to vimGroupName
"vimHiAttrib    xxx links to PreProc
"vimFgBgAttrib  xxx links to vimHiAttrib
"vimHiAttribList xxx links to vimError
"vimHiCtermColor xxx cleared
"vimHiFontname  xxx cleared
"vimHiGuiFontname xxx cleared
"vimHiGuiRgb    xxx links to vimNumber
"vimHiCtermError xxx links to vimError
"vimHiTerm      xxx links to Type
"vimHiCTerm     xxx links to vimHiTerm
"vimHiStartStop xxx links to vimHiTerm
"vimHiCtermFgBg xxx links to vimHiTerm
"vimHiGui       xxx links to vimHiTerm
"vimHiGuiFont   xxx links to vimHiTerm
"vimHiGuiFgBg   xxx links to vimHiTerm
"vimHiKeyError  xxx links to vimError
"vimHiTermcap   xxx cleared
"vimCommentTitle xxx links to PreProc
"vimCommentTitleLeader xxx cleared
"vimSearchDelim xxx links to Statement
"vimSearch      xxx links to vimString
"vimGlobal      xxx cleared
"perlTodo       xxx links to Todo
"perlPOD        xxx links to perlComment
"perlElseIfError xxx links to Error
"perlConditional xxx links to Conditional
"perlRepeat     xxx links to Repeat
"perlOperator   xxx links to Operator
"perlControl    xxx links to PreProc
"perlStatementStorage xxx links to perlStatement
"perlStatementControl xxx links to perlStatement
"perlStatementScalar xxx links to perlStatement
"perlStatementRegexp xxx links to perlStatement
"perlStatementNumeric xxx links to perlStatement
"perlStatementList xxx links to perlStatement
"perlStatementHash xxx links to perlStatement
"perlStatementIOfunc xxx links to perlStatement
"perlStatementFiledesc xxx links to perlStatement
"perlFiledescStatementNocomma xxx cleared
"perlFiledescStatementComma xxx cleared
"perlStatementVector xxx links to perlStatement
"perlStatementFiles xxx links to perlStatement
"perlStatementFlow xxx links to perlStatement
"perlStatementInclude xxx links to perlStatement
"perlStatementScope xxx links to perlStatement
"perlStatementProc xxx links to perlStatement
"perlStatementSocket xxx links to perlStatement
"perlStatementIPC xxx links to perlStatement
"perlStatementNetwork xxx links to perlStatement
"perlStatementPword xxx links to perlStatement
"perlStatementTime xxx links to perlStatement
"perlStatementMisc xxx links to perlStatement
"perlStatementNew xxx links to perlStatement
"perlVarPlain   xxx links to perlIdentifier
"perlVarNotInMatches xxx links to perlIdentifier
"perlVarSlash   xxx links to perlIdentifier
"perlPackageRef xxx links to perlType
"perlVarMember  xxx cleared
"perlVarSimpleMember xxx links to perlIdentifier
"perlMethod     xxx links to perlIdentifier
"perlVarPlain2  xxx links to perlIdentifier
"perlFunctionName xxx links to perlIdentifier
"perlVarSimpleMemberName xxx links to perlString
"perlFiledescRead xxx links to perlIdentifier
"perlFiledescStatement xxx links to perlIdentifier
"perlSpecialString xxx links to perlSpecial
"perlSpecialStringU xxx links to perlSpecial
"perlSpecialMatch xxx links to perlSpecial
"perlNotEmptyLine xxx links to Error
"perlVarBlock   xxx cleared
"perlSpecialBEOM xxx links to perlSpecial
"perlMatchStartEnd xxx links to perlStatement
"perlShellCommand xxx links to perlString
"perlNumber     xxx links to Number
"perlFloat      xxx links to Float
"perlMatch      xxx links to perlString
"perlComment    xxx links to Comment
"perlSubstitutionSQ xxx links to perlString
"perlSubstitutionDQ xxx links to perlString
"perlSubstitutionSlash xxx links to perlString
"perlSubstitutionHash xxx links to perlString
"perlSubstitutionBracket xxx links to perlString
"perlSubstitutionCurly xxx links to perlString
"perlSubstitutionPling xxx links to perlString
"perlTranslationSQ xxx cleared
"perlTranslationDQ xxx cleared
"perlTranslationSlash xxx links to perlString
"perlTranslationHash xxx links to perlString
"perlTranslationBracket xxx links to perlString
"perlTranslationCurly xxx links to perlString
"perlString     xxx links to String
"perlBrackets   xxx links to Error
"perlStringStartEnd xxx links to perlString
"perlStringUnexpanded xxx links to perlString
"perlQQ         xxx links to perlString
"perlHereDoc    xxx links to perlString
"perlAutoload   xxx cleared
"perlUntilEOFDQ xxx cleared
"perlUntilEOFSQ xxx cleared
"perlUntilEmptyDQ xxx cleared
"perlUntilEmptySQ xxx cleared
"perlStatementPackage xxx links to perlStatement
"perlPackageDecl xxx links to perlType
"perlStatementSub xxx links to perlStatement
"perlFunctionPrototype xxx links to perlFunction
"perlFunctionPRef xxx links to perlType
"perlFunction   xxx links to Function
"perlSharpBang  xxx links to PreProc
"perlFormatName xxx links to perlIdentifier
"perlFormatField xxx links to perlString
"perlFormat     xxx cleared
"perlDATA       xxx links to perlComment
"perlInclude    xxx links to Include
"perlSpecial    xxx links to Special
"perlCharacter  xxx links to Character
"perlType       xxx links to Type
"perlIdentifier xxx links to Identifier
"perlLabel      xxx links to Label
"perlStatement  xxx links to Statement
"perlList       xxx links to perlStatement
"perlMisc       xxx links to perlStatement
"perlStorageClass xxx links to perlType
"perlSpecialAscii xxx links to perlSpecial
"perlSpecialDollar xxx links to perlSpecial
"perlSync       xxx cleared
"perlSyncPOD    xxx cleared
"vimScriptDelim xxx links to Comment
"vimPerlRegion  xxx cleared
"vimEmbedError  xxx links to vimError
"pythonStatement xxx links to Statement
"pythonFunction xxx links to Function
"pythonRepeat   xxx links to Repeat
"pythonConditional xxx links to Conditional
"pythonOperator xxx links to Operator
"pythonPreCondit xxx links to PreCondit
"pythonTodo     xxx links to Todo
"pythonComment  xxx links to Comment
"pythonDecorator xxx links to Define
"Normal         xxx cleared
"pythonEscape   xxx links to Special
"pythonString   xxx links to String
"pythonRawString xxx links to String
"pythonBuiltin  xxx cleared
"pythonException xxx cleared
"pythonSync     xxx cleared
"vimPythonRegion xxx cleared
"vimAugroupSyncA xxx cleared
"vimAuHighlight xxx links to vimHighlight
"vimError       xxx links to Error
"vimKeyCodeError xxx links to vimError
"vimWarn        xxx links to WarningMsg
"vimAutoCmdOpt  xxx links to vimOption
"vimAutoSet     xxx links to vimCommand
"vimCondHL      xxx links to vimCommand
"vimElseif      xxx links to vimCondHL
"vimSynOption   xxx links to Special
"vimKeyCode     xxx links to vimSpecFile
"vimSpecial     xxx links to Type
"vimFold        xxx links to Folded
"vimHLMod       xxx links to PreProc
"vimKeyword     xxx links to Statement
"vimStatement   xxx links to Statement
"helpHeadline   xxx links to Statement
"helpSectionDelim xxx links to PreProc
"helpIgnore     xxx links to Ignore
"helpExample    xxx links to Comment
"helpBar        xxx links to Ignore
"helpStar       xxx links to Ignore
"helpHyperTextJump xxx links to Subtitle
"helpHyperTextEntry xxx links to String
"helpNormal     xxx cleared
"helpVim        xxx links to Identifier
"helpOption     xxx links to Type
"helpHeader     xxx links to PreProc
"helpNote       xxx links to Todo
"helpSpecial    xxx links to Special
"helpLeadBlank  xxx cleared
"helpNotVi      xxx links to Special
"helpComment    xxx links to Comment
"helpConstant   xxx links to Constant
"helpString     xxx links to String
"helpCharacter  xxx links to Character
"helpNumber     xxx links to Number
"helpBoolean    xxx links to Boolean
"helpFloat      xxx links to Float
"helpIdentifier xxx links to Identifier
"helpFunction   xxx links to Function
"helpStatement  xxx links to Statement
"helpConditional xxx links to Conditional
"helpRepeat     xxx links to Repeat
"helpLabel      xxx links to Label
"helpOperator   xxx links to Operator
"helpKeyword    xxx links to Keyword
"helpException  xxx links to Exception
"helpPreProc    xxx links to PreProc
"helpInclude    xxx links to Include
"helpDefine     xxx links to Define
"helpMacro      xxx links to Macro
"helpPreCondit  xxx links to PreCondit
"helpType       xxx links to Type
"helpStorageClass xxx links to StorageClass
"helpStructure  xxx links to Structure
"helpTypedef    xxx links to Typedef
"helpSpecialChar xxx links to SpecialChar
"helpTag        xxx links to Tag
"helpDelimiter  xxx links to Delimiter
"helpSpecialComment xxx links to SpecialComment
"helpDebug      xxx links to Debug
"helpUnderlined xxx links to Underlined
"helpError      xxx links to Error
"helpTodo       xxx links to Todo
"helpURL        xxx links to String
"helpExampleStart xxx links to helpIgnore
"Subtitle       xxx links to Identifier

	hi!			Comment			ctermfg=240					cterm=bold
	hi!			ColorColumn		ctermfg=234		ctermbg=none
	hi!			Constant		ctermfg=22					cterm=bold
	hi!			Number			ctermfg=28					cterm=bold
	hi!			String			ctermfg=238		ctermbg=00	cterm=none
	hi!			Identifier		ctermfg=01					cterm=bold
	hi!			Function		ctermfg=01					cterm=bold
	hi!			Statement		ctermfg=160					cterm=bold
	hi!	link	cStatement Statement
	hi!			Conditional		ctermfg=160					cterm=none
	hi!			cConditional	ctermfg=160					cterm=none
	hi!			Label			ctermfg=01						cterm=bold
	hi!	link	cLabel Label
	hi!			PreProc			ctermfg=244		ctermbg=236		cterm=none
	hi!	link	Macro PreProc
	hi!			cDefine		ctermfg=244		ctermbg=none	cterm=none
	hi!			Type			ctermfg=09					cterm=bold
	hi!			cType		ctermfg=09					cterm=underline
	hi!			Special		ctermfg=160		ctermbg=236	cterm=none
	hi!			cFormat		ctermfg=01						cterm=bold
	hi!			Error        term=reverse cterm=bold ctermbg=01 ctermfg=01 
	hi!			MoreMsg                              ctermbg=none ctermfg=239
	hi!			Question                             ctermbg=none ctermfg=209
	hi!			Todo			ctermfg=220		ctermbg=28	cterm=bold
	hi!			Directory		ctermfg=02
	"hi			Normal
	hi!			Search		ctermfg=190	ctermbg=none	cterm=bold
	hi!			IncSearch	ctermfg=190	ctermbg=35		cterm=bold
	hi!			Title		ctermfg=03					cterm=bold
	hi!		Column71 ctermfg=70
	hi!		Column80 ctermfg=82

	"mails
	hi! link mailHeaderKey   Type
	hi! link mailSubject     LineNr
	hi! link mailHeaderEmail mailEmail
	hi! link mailURL         String
	hi! link mailEmail       Special
	hi! link mailQuoteExp1   mailQuoted1
	hi! link mailQuoteExp2   mailQuoted2
	hi! link mailQuoteExp3   mailQuoted3
	hi! link mailQuoteExp4   mailQuoted4
	hi! link mailQuoteExp5   mailQuoted5
	hi! link mailQuoteExp6   mailQuoted6
	hi! link mailHeader      Statement
	hi! link mailSignature   PreProc
	hi! mailQuoted1 ctermfg=249
	hi! mailQuoted2 ctermfg=245
	hi! mailQuoted3 ctermfg=240
	hi! mailQuoted4 ctermfg=237
	hi! mailQuoted5 ctermfg=234
	hi! mailQuoted6 ctermfg=232

	hi! Visual		ctermfg=none	ctermbg=00	cterm=none

	hi! MatchParen	ctermfg=03	ctermbg=none	cterm=bold

	hi! DiffAdd		term=bold			ctermfg=none	cterm=none	ctermbg=black
	hi! DiffChange	term=bold			ctermfg=none	cterm=none	ctermbg=black
	hi! DiffDelete	term=reverse		ctermfg=black	cterm=none	ctermbg=none
	hi! DiffText	term=none			ctermfg=none	cterm=none	ctermbg=88

	hi! StatusLineCMD		term=reverse,bold		ctermfg=160	ctermbg=none		cterm=bold
	hi! StatusLineINS		term=reverse,bold		ctermfg=09	ctermbg=none		cterm=bold
	hi! link StatusLine StatusLineCMD
	au InsertLeave * hi! link StatusLine StatusLineCMD
	au InsertEnter * hi! link StatusLine StatusLineINS
	hi! User1			term=reverse,underline	ctermfg=01	ctermbg=none		cterm=bold
	hi! User2			term=bold				ctermfg=03	ctermbg=none		cterm=bold
	hi! User3			term=bold				ctermfg=236	ctermbg=00			cterm=bold
	hi! User4			term=bold				ctermfg=88	ctermbg=none		cterm=none
	hi! StatusLineNC	term=reverse			ctermfg=08	ctermbg=none		cterm=bold

	hi! VertSplit			term=reverse			ctermfg=08	ctermbg=none	cterm=none
	hi! Folded				term=reverse			ctermfg=00	ctermbg=none	cterm=bold
	hi! link FoldColumn Folded
	hi! LineNR				term=reverse,bold	ctermbg=none ctermfg=236 cterm=bold

	hi!       TabLine		term=underline cterm=none,underline	ctermbg=none ctermfg=00
	hi! link  TabLineFill	TabLine
	hi!       TabLineSel	term=bold							ctermbg=88  ctermfg=160 cterm=bold

	hi! CursorLine		ctermbg=00 cterm=none
	hi! CursorColumn	ctermbg=236 cterm=none

	hi! SpellBad        term=reverse cterm=bold ctermbg=52 ctermfg=160
	hi! SpellCap        term=reverse cterm=none ctermbg=none ctermfg=01
	hi! SpellRare       term=reverse cterm=bold ctermbg=160 ctermfg=68
	hi! SpellLocal      term=underline cterm=bold ctermfg=02

	hi! WildMenu        term=reverse cterm=bold ctermbg=00 ctermfg=03

	hi! NonText      ctermfg=00 cterm=bold
	hi! SpecialKey   ctermfg=236 cterm=none

	hi! makeCommands ctermfg=86 ctermbg=0

	" TODO
	hi! todoTitle1 ctermfg=03 cterm=bold
	hi! todoTitle2 ctermfg=09 cterm=bold
	hi! todoTitle3 ctermfg=36 cterm=bold
	hi! todoTitle4 ctermfg=10 cterm=bold

	hi! todoTask1    ctermfg=none
	hi! todoTask2    ctermfg=248
	hi! todoTask3    ctermfg=242
	hi! todoTask4    ctermfg=238
	hi! todoTaskDone ctermfg=16
	hi! todoSubDone  ctermfg=16 cterm=standout

	hi! todoImportant cterm=bold

	hi! todoLink     ctermfg=160 ctermbg=88 cterm=underline

	hi! rtTicket     ctermfg=208 ctermbg=none cterm=standout


	hi! todoDiggle   ctermfg=236 ctermbg=none cterm=bold
	hi! todoMark     ctermfg=236 ctermbg=08 cterm=bold

elseif &t_Co >= 88
	hi!			Comment			ctermfg=81					cterm=bold
	hi!			Constant		ctermfg=65					cterm=none
	hi!			Number			ctermfg=04					cterm=bold
	hi!			String			ctermfg=32		ctermbg=00	cterm=none
	hi!			Identifier		ctermfg=01					cterm=bold
	hi!			Function		ctermfg=01					cterm=bold
	hi!			Statement		ctermfg=64					cterm=bold
	hi!	link	cStatement Statement
	hi!			Conditional		ctermfg=64					cterm=none
	hi!			cConditional	ctermfg=64					cterm=none
	hi!			Label			ctermfg=01						cterm=bold
	hi!	link	cLabel Label
	hi!			PreProc			ctermfg=84		ctermbg=80		cterm=none
	hi!	link	Macro PreProc
	hi!			cDefine		ctermfg=85		ctermbg=none	cterm=none
	hi!			Type			ctermfg=09					cterm=bold
	hi!			cType		ctermfg=09					cterm=underline
	hi!			Special		ctermfg=64		ctermbg=80	cterm=none
	hi!			cFormat		ctermfg=01						cterm=bold
	hi!			Error											cterm=bold
	hi!			Todo			ctermfg=20		ctermbg=24	cterm=bold
	hi!			Directory		ctermfg=02
	"hi			Normal
	hi!			Search		ctermfg=03	ctermbg=none	cterm=bold
	hi!			IncSearch	ctermfg=03	ctermbg=20		cterm=bold
	hi!			Title		ctermfg=03					cterm=bold

	hi!		Column71 ctermfg=68
	hi!		Column80 ctermfg=11
	
	"mails
	hi! link mailHeaderKey   Type
	hi! link mailSubject     LineNr
	hi! link mailHeaderEmail mailEmail
	hi! link mailURL         String
	hi! link mailEmail       Special
	hi! link mailQuoteExp1   mailQuoted1
	hi! link mailQuoteExp2   mailQuoted2
	hi! link mailQuoteExp3   mailQuoted3
	hi! link mailQuoteExp4   mailQuoted4
	hi! link mailQuoteExp5   mailQuoted5
	hi! link mailQuoteExp6   mailQuoted6
	hi! link mailHeader      Statement
	hi! link mailSignature   PreProc
	hi! mailQuoted1 ctermfg=88
	hi! mailQuoted2 ctermfg=87
	hi! mailQuoted3 ctermfg=86
	hi! mailQuoted4 ctermfg=85
	hi! mailQuoted5 ctermfg=84
	hi! mailQuoted6 ctermfg=83

	hi! Visual		ctermfg=none	ctermbg=00	cterm=none

	hi! MatchParen	ctermfg=03	ctermbg=none	cterm=bold

	hi! DiffAdd		term=bold			ctermfg=none	cterm=none	ctermbg=black
	hi! DiffChange	term=bold			ctermfg=none	cterm=none	ctermbg=black
	hi! DiffDelete	term=reverse		ctermfg=black	cterm=none	ctermbg=none
	hi! DiffText	term=none			ctermfg=none	cterm=none	ctermbg=48

	hi! StatusLineCMD		term=reverse,bold		ctermfg=64	ctermbg=none		cterm=bold
	hi! StatusLineINS		term=reverse,bold		ctermfg=09	ctermbg=none		cterm=bold
	hi! link StatusLine StatusLineCMD
	au InsertLeave * hi! link StatusLine StatusLineCMD
	au InsertEnter * hi! link StatusLine StatusLineINS
	hi! User1			term=reverse,underline	ctermfg=01	ctermbg=none		cterm=bold
	hi! User2			term=bold				ctermfg=03	ctermbg=none		cterm=bold
	hi! User3			term=bold				ctermfg=80	ctermbg=00			cterm=bold
	hi! User4			term=bold				ctermfg=32	ctermbg=none		cterm=none
	hi! StatusLineNC	term=reverse			ctermfg=08	ctermbg=none		cterm=bold

	hi! VertSplit			term=reverse			ctermfg=08	ctermbg=none	cterm=none
	hi! Folded				term=reverse			ctermfg=00	ctermbg=none	cterm=bold
	hi! link FoldColumn Folded
	hi! LineNR				term=reverse,bold	ctermbg=none ctermfg=80 cterm=bold

	hi!       TabLine		term=underline cterm=none,underline	ctermbg=none ctermfg=00
	hi! link  TabLineFill	TabLine
	hi!       TabLineSel	term=bold							ctermbg=32  ctermfg=64 cterm=bold

	hi! CursorLine		ctermbg=00 cterm=none
	hi! CursorColumn	ctermbg=80 cterm=none

	hi! SpellBad        term=reverse cterm=bold ctermbg=01 ctermfg=01 
	hi! SpellCap        term=reverse cterm=none ctermbg=none ctermfg=01 
	hi! SpellRare       term=reverse cterm=bold ctermbg=64 ctermfg=68
	hi! SpellLocal      term=underline cterm=bold ctermfg=02

	hi! WildMenu        term=reverse cterm=bold ctermbg=00 ctermfg=03

	hi! NonText      ctermfg=00 cterm=bold
	hi! SpecialKey   ctermfg=80 cterm=none

	hi! makeCommands ctermfg=86 ctermbg=0

	" TODO
	hi! todoTitle1 ctermfg=03 cterm=bold
	hi! todoTitle2 ctermfg=09 cterm=bold
	hi! todoTitle3 ctermfg=36 cterm=bold
	hi! todoTitle4 ctermfg=10 cterm=bold

	hi! todoTask1    ctermfg=none
	hi! todoTask2    ctermfg=86
	hi! todoTask3    ctermfg=83
	hi! todoTask4    ctermfg=81
	hi! todoTaskDone ctermfg=16 cterm=none
	hi! todoSubDone  ctermfg=16 cterm=standout

	hi! todoImportant cterm=bold

	hi! todoLink     ctermfg=64 ctermbg=32 cterm=underline

	hi! rtTicket     ctermfg=05 ctermbg=none cterm=standout


	hi! todoDiggle   ctermfg=80 ctermbg=none cterm=bold
	hi! todoMark     ctermfg=80 ctermbg=08 cterm=bold
	hi! todoMarkee   ctermfg=16 ctermbg=08 cterm=bold
endif
