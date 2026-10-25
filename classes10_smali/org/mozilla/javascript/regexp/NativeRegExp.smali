.class public Lorg/mozilla/javascript/regexp/NativeRegExp;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeRegExp.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANCHOR_BOL:I = -0x2

.field private static final INDEX_LEN:I = 0x2

.field private static final Id_compile:I = 0x1

.field private static final Id_exec:I = 0x4

.field private static final Id_global:I = 0x3

.field private static final Id_ignoreCase:I = 0x4

.field private static final Id_lastIndex:I = 0x1

.field private static final Id_multiline:I = 0x5

.field private static final Id_prefix:I = 0x6

.field private static final Id_source:I = 0x2

.field private static final Id_test:I = 0x5

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field public static final JSREG_FOLD:I = 0x2

.field public static final JSREG_GLOB:I = 0x1

.field public static final JSREG_MULTILINE:I = 0x4

.field public static final MATCH:I = 0x1

.field private static final MAX_INSTANCE_ID:I = 0x5

.field private static final MAX_PROTOTYPE_ID:I = 0x8

.field public static final PREFIX:I = 0x2

.field private static final REGEXP_TAG:Ljava/lang/Object;

.field private static final REOP_ALNUM:B = 0x9t

.field private static final REOP_ALT:B = 0x1ft

.field private static final REOP_ALTPREREQ:B = 0x35t

.field private static final REOP_ALTPREREQ2:B = 0x37t

.field private static final REOP_ALTPREREQi:B = 0x36t

.field private static final REOP_ASSERT:B = 0x29t

.field private static final REOP_ASSERTNOTTEST:B = 0x2ct

.field private static final REOP_ASSERTTEST:B = 0x2bt

.field private static final REOP_ASSERT_NOT:B = 0x2at

.field private static final REOP_BACKREF:B = 0xdt

.field private static final REOP_BOL:B = 0x2t

.field private static final REOP_CLASS:B = 0x16t

.field private static final REOP_DIGIT:B = 0x7t

.field private static final REOP_DOT:B = 0x6t

.field private static final REOP_EMPTY:B = 0x1t

.field private static final REOP_END:B = 0x39t

.field private static final REOP_ENDCHILD:B = 0x31t

.field private static final REOP_EOL:B = 0x3t

.field private static final REOP_FLAT:B = 0xet

.field private static final REOP_FLAT1:B = 0xft

.field private static final REOP_FLAT1i:B = 0x11t

.field private static final REOP_FLATi:B = 0x10t

.field private static final REOP_JUMP:B = 0x20t

.field private static final REOP_LPAREN:B = 0x1dt

.field private static final REOP_MINIMALOPT:B = 0x2ft

.field private static final REOP_MINIMALPLUS:B = 0x2et

.field private static final REOP_MINIMALQUANT:B = 0x30t

.field private static final REOP_MINIMALREPEAT:B = 0x34t

.field private static final REOP_MINIMALSTAR:B = 0x2dt

.field private static final REOP_NCLASS:B = 0x17t

.field private static final REOP_NONALNUM:B = 0xat

.field private static final REOP_NONDIGIT:B = 0x8t

.field private static final REOP_NONSPACE:B = 0xct

.field private static final REOP_OPT:B = 0x1ct

.field private static final REOP_PLUS:B = 0x1bt

.field private static final REOP_QUANT:B = 0x19t

.field private static final REOP_REPEAT:B = 0x33t

.field private static final REOP_RPAREN:B = 0x1et

.field private static final REOP_SIMPLE_END:B = 0x17t

.field private static final REOP_SIMPLE_START:B = 0x1t

.field private static final REOP_SPACE:B = 0xbt

.field private static final REOP_STAR:B = 0x1at

.field private static final REOP_UCFLAT1:B = 0x12t

.field private static final REOP_UCFLAT1i:B = 0x13t

.field private static final REOP_WBDRY:B = 0x4t

.field private static final REOP_WNONBDRY:B = 0x5t

.field private static final SymbolId_match:I = 0x7

.field private static final SymbolId_search:I = 0x8

.field public static final TEST:I = 0x0

.field private static final debug:Z = false

.field private static final serialVersionUID:J = 0x44e828d6a0fb3a60L


# instance fields
.field lastIndex:Ljava/lang/Object;

.field private lastIndexAttr:I

.field private re:Lorg/mozilla/javascript/regexp/RECompiled;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-void
.end method

.method private static addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V
    .registers 8

    div-int/lit8 v0, p1, 0x8

    div-int/lit8 v1, p2, 0x8

    iget v2, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-ge p2, v2, :cond_45

    if-gt p1, p2, :cond_45

    and-int/lit8 p1, p1, 0x7

    int-to-char p1, p1

    and-int/lit8 p2, p2, 0x7

    int-to-char p2, p2

    const/16 v2, 0xff

    if-ne v0, v1, :cond_24

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, p0, v0

    sub-int/2addr p2, p1

    rsub-int/lit8 p2, p2, 0x7

    shr-int p2, v2, p2

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    goto :goto_44

    :cond_24
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v4, v3, v0

    shl-int p1, v2, p1

    or-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_38

    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    const/4 v3, -0x1

    aput-byte v3, p1, v0

    goto :goto_2e

    :cond_38
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte p1, p0, v1

    rsub-int/lit8 p2, p2, 0x7

    shr-int p2, v2, p2

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    :goto_44
    return-void

    :cond_45
    const-string p0, "SyntaxError"

    const-string p1, "invalid range in character class"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    goto :goto_4f

    :goto_4e
    throw p0

    :goto_4f
    goto :goto_4e
.end method

.method private static addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V
    .registers 5

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-ge p1, v1, :cond_14

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    and-int/lit8 p1, p1, 0x7

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void

    :cond_14
    const-string p0, "SyntaxError"

    const-string p1, "invalid range in character class"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static addIndex([BII)I
    .registers 4

    if-ltz p2, :cond_1b

    const v0, 0xffff

    if-gt p2, v0, :cond_14

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, p0, v0

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_14
    const-string p0, "Too complex regexp"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_1b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    array-length v0, v0

    if-lt p1, v0, :cond_9

    goto :goto_52

    :cond_9
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_12

    return v3

    :cond_12
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    move-result p1

    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int v4, v2, p1

    if-le v4, p3, :cond_1d

    return v1

    :cond_1d
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p3, p3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_45

    const/4 p3, 0x0

    :goto_26
    if-ge p3, p1, :cond_4c

    add-int v2, v0, p3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v4, p3

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_42

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    if-eq v2, v4, :cond_42

    return v1

    :cond_42
    add-int/lit8 p3, p3, 0x1

    goto :goto_26

    :cond_45
    invoke-virtual {p2, v0, p2, v2, p1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_4c

    return v1

    :cond_4c
    iget p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    return v3

    :cond_52
    :goto_52
    return v1
.end method

.method private static calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z
    .registers 16

    const/4 v0, 0x0

    iput v0, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    if-ne p3, p4, :cond_9

    return v1

    :cond_9
    aget-char v2, p2, p3

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_13

    add-int/lit8 p3, p3, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_16
    :goto_16
    if-eq p3, p4, :cond_fc

    aget-char v5, p2, p3

    const/4 v6, 0x2

    const/16 v7, 0x5c

    if-eq v5, v7, :cond_26

    add-int/lit8 v5, p3, 0x1

    aget-char v7, p2, p3

    :goto_23
    move p3, v5

    goto/16 :goto_c3

    :cond_26
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v5, p3, 0x1

    aget-char p3, p2, p3

    const/16 v8, 0x44

    const/high16 v9, 0x10000

    if-eq p3, v8, :cond_f9

    const/16 v8, 0x53

    if-eq p3, v8, :cond_f9

    const/16 v8, 0x57

    if-eq p3, v8, :cond_f9

    const/16 v8, 0x66

    if-eq p3, v8, :cond_bf

    const/16 v8, 0x6e

    if-eq p3, v8, :cond_bb

    packed-switch p3, :pswitch_data_100

    packed-switch p3, :pswitch_data_114

    packed-switch p3, :pswitch_data_11e

    :cond_4b
    :goto_4b
    move v7, p3

    goto :goto_23

    :pswitch_4d  #0x78
    const/4 p3, 0x2

    goto :goto_53

    :pswitch_4f  #0x76
    const/16 v7, 0xb

    goto :goto_23

    :pswitch_52  #0x75
    const/4 p3, 0x4

    :goto_53
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_55
    if-ge v8, p3, :cond_6c

    if-ge v5, p4, :cond_6c

    add-int/lit8 v10, v5, 0x1

    aget-char v5, p2, v5

    invoke-static {v5, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v9

    if-gez v9, :cond_68

    add-int/lit8 v8, v8, 0x1

    sub-int v5, v10, v8

    goto :goto_23

    :cond_68
    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_55

    :cond_6c
    move v7, v9

    goto :goto_23

    :pswitch_6e  #0x74
    const/16 v7, 0x9

    goto :goto_23

    :pswitch_71  #0x72
    const/16 v7, 0xd

    goto :goto_23

    :pswitch_74  #0x64
    if-eqz v3, :cond_79

    iput v9, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    return v1

    :cond_79
    const/16 v7, 0x39

    goto :goto_23

    :pswitch_7c  #0x63
    if-ge v5, p4, :cond_8b

    aget-char p3, p2, v5

    invoke-static {p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result p3

    if-eqz p3, :cond_8b

    add-int/lit8 p3, v5, 0x1

    aget-char v5, p2, v5

    goto :goto_c3

    :cond_8b
    add-int/lit8 p3, v5, -0x1

    goto :goto_c3

    :pswitch_8e  #0x62
    const/16 v7, 0x8

    goto :goto_23

    :pswitch_91  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
    add-int/lit8 p3, p3, -0x30

    aget-char v7, p2, v5

    const/16 v8, 0x30

    if-gt v8, v7, :cond_4b

    const/16 v9, 0x37

    if-gt v7, v9, :cond_4b

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 p3, p3, 0x8

    add-int/lit8 v7, v7, -0x30

    add-int/2addr p3, v7

    aget-char v7, p2, v5

    if-gt v8, v7, :cond_4b

    if-gt v7, v9, :cond_4b

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v8, p3, 0x8

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v8, v7

    const/16 v7, 0xff

    if-gt v8, v7, :cond_b8

    move v7, v8

    goto/16 :goto_23

    :cond_b8
    add-int/lit8 v5, v5, -0x1

    goto :goto_4b

    :cond_bb
    const/16 v7, 0xa

    goto/16 :goto_23

    :cond_bf
    const/16 v7, 0xc

    goto/16 :goto_23

    :goto_c3
    if-eqz v3, :cond_d1

    if-le v4, v7, :cond_cf

    const-string p0, "msg.bad.range"

    const-string p1, ""

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_cf
    const/4 v3, 0x0

    goto :goto_e1

    :cond_d1
    add-int/lit8 v5, p4, -0x1

    if-ge p3, v5, :cond_e1

    aget-char v5, p2, p3

    const/16 v8, 0x2d

    if-ne v5, v8, :cond_e1

    add-int/lit8 p3, p3, 0x1

    int-to-char v4, v7

    const/4 v3, 0x1

    goto/16 :goto_16

    :cond_e1
    :goto_e1
    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_f4

    int-to-char v5, v7

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v6

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v5

    if-lt v6, v5, :cond_f3

    move v7, v6

    goto :goto_f4

    :cond_f3
    move v7, v5

    :cond_f4
    :goto_f4
    if-le v7, v2, :cond_16

    move v2, v7

    goto/16 :goto_16

    :cond_f9
    :pswitch_f9  #0x73, 0x77
    iput v9, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    return v1

    :cond_fc
    add-int/2addr v2, v1

    iput v2, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    return v1

    :pswitch_data_100
    .packed-switch 0x30
        :pswitch_91  #00000030
        :pswitch_91  #00000031
        :pswitch_91  #00000032
        :pswitch_91  #00000033
        :pswitch_91  #00000034
        :pswitch_91  #00000035
        :pswitch_91  #00000036
        :pswitch_91  #00000037
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x62
        :pswitch_8e  #00000062
        :pswitch_7c  #00000063
        :pswitch_74  #00000064
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x72
        :pswitch_71  #00000072
        :pswitch_f9  #00000073
        :pswitch_6e  #00000074
        :pswitch_52  #00000075
        :pswitch_4f  #00000076
        :pswitch_f9  #00000077
        :pswitch_4d  #00000078
    .end packed-switch
.end method

.method private static classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z
    .registers 5

    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v0, :cond_7

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    :cond_7
    shr-int/lit8 p0, p2, 0x3

    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    if-ge p2, v0, :cond_1d

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte p0, v0, p0

    and-int/lit8 p2, p2, 0x7

    shl-int p2, v1, p2

    and-int/2addr p0, p2

    if-nez p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    iget-boolean p0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method static compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;
    .registers 14

    new-instance v0, Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/regexp/RECompiled;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_45

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_46

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x67

    const-string v8, "msg.invalid.re.flag"

    if-ne v6, v7, :cond_22

    const/4 v7, 0x1

    goto :goto_36

    :cond_22
    const/16 v7, 0x69

    if-ne v6, v7, :cond_28

    const/4 v7, 0x2

    goto :goto_36

    :cond_28
    const/16 v7, 0x6d

    if-ne v6, v7, :cond_2e

    const/4 v7, 0x4

    goto :goto_36

    :cond_2e
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_36
    and-int v9, v5, v7

    if-eqz v9, :cond_41

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    or-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_45
    const/4 v5, 0x0

    :cond_46
    iput v5, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    iget-object v4, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p2, p0, v4, p1, v5}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    if-eqz p3, :cond_6d

    if-lez p1, :cond_6d

    new-instance p0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 p3, 0xe

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object p3, p2, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    aget-char p3, p3, v3

    iput-char p3, p0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput p1, p0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iput v3, p0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 p0, p0, 0x5

    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_8d

    :cond_6d
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result p3

    const/4 v4, 0x0

    if-nez p3, :cond_75

    return-object v4

    :cond_75
    iget p3, p2, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    iget v6, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    if-le p3, v6, :cond_8d

    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    iget-object p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p2, p0, p3, p1, v5}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result p0

    if-nez p0, :cond_8d

    return-object v4

    :cond_8d
    :goto_8d
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr p0, v2

    new-array p0, p0, [B

    iput-object p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    if-eqz p0, :cond_9e

    new-array p1, p0, [Lorg/mozilla/javascript/regexp/RECharSet;

    iput-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classCount:I

    :cond_9e
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p2, v0, v3, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p0

    iget-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/16 p3, 0x39

    aput-byte p3, p1, p0

    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    aget-byte p0, p1, v3

    const/4 p3, -0x2

    if-eq p0, v1, :cond_e7

    const/16 v3, 0x1f

    if-eq p0, v3, :cond_d6

    packed-switch p0, :pswitch_data_ea

    goto :goto_e9

    :pswitch_bb  #0x12, 0x13
    invoke-static {p1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    int-to-char p0, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_e9

    :pswitch_c3  #0xf, 0x11
    aget-byte p0, p1, v2

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_e9

    :pswitch_cb  #0xe, 0x10
    invoke-static {p1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    iget-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char p0, p1, p0

    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_e9

    :cond_d6
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte p1, p1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne p1, v1, :cond_e9

    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte p0, p0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne p0, v1, :cond_e9

    iput p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_e9

    :cond_e7
    iput p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    :cond_e9
    :goto_e9
    return-object v0

    :pswitch_data_ea
    .packed-switch 0xe
        :pswitch_cb  #0000000e
        :pswitch_c3  #0000000f
        :pswitch_cb  #00000010
        :pswitch_c3  #00000011
        :pswitch_bb  #00000012
        :pswitch_bb  #00000013
    .end packed-switch
.end method

.method private static doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char p1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    const/4 p1, 0x1

    iput p1, v0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    const/4 p1, -0x1

    iput p1, v0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return-void
.end method

.method private static downcase(C)C
    .registers 3

    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    const/16 v0, 0x41

    if-gt v0, p0, :cond_f

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_f

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    :cond_f
    return p0

    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ge v1, v0, :cond_17

    goto :goto_18

    :cond_17
    move p0, v1

    :goto_18
    return p0
.end method

.method private static emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I
    .registers 12

    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    :goto_2
    if-eqz p3, :cond_1e3

    add-int/lit8 v1, p2, 0x1

    iget-byte v2, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    aput-byte v2, v0, p2

    const/4 p2, 0x1

    if-eq v2, p2, :cond_1db

    const/16 v3, 0x16

    if-eq v2, v3, :cond_1b7

    const/16 v3, 0x19

    const/4 v4, -0x1

    if-eq v2, v3, :cond_145

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_12b

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_104

    const/16 v3, 0xd

    if-eq v2, v3, :cond_fc

    const/16 v3, 0xe

    if-eq v2, v3, :cond_80

    const/16 v3, 0x29

    if-eq v2, v3, :cond_6c

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_5a

    packed-switch v2, :pswitch_data_1e8

    :goto_31
    move p2, v1

    goto/16 :goto_1df

    :pswitch_34  #0x35, 0x36, 0x37
    const/16 v3, 0x36

    if-ne v2, v3, :cond_39

    goto :goto_3a

    :cond_39
    const/4 p2, 0x0

    :goto_3a
    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    if-eqz p2, :cond_42

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    :cond_42
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    add-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_51

    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    int-to-char p2, p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p2

    goto :goto_53

    :cond_51
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    :goto_53
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_104

    :cond_5a
    add-int/lit8 p2, v1, 0x2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x2c

    aput-byte v3, v0, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto :goto_7d

    :cond_6c
    add-int/lit8 p2, v1, 0x2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x2b

    aput-byte v3, v0, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    :goto_7d
    move p2, v2

    goto/16 :goto_1df

    :cond_80
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-eq v2, v4, :cond_9f

    :goto_84
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v2, :cond_9f

    iget-byte v5, v2, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v5, v3, :cond_9f

    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v5, v6

    iget v7, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-ne v5, v7, :cond_9f

    iget v5, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v6, v5

    iput v6, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_84

    :cond_9f
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-eq v2, v4, :cond_c4

    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    if-le v4, p2, :cond_c4

    iget p2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b4

    add-int/lit8 p2, v1, -0x1

    const/16 v3, 0x10

    aput-byte v3, v0, p2

    goto :goto_b8

    :cond_b4
    add-int/lit8 p2, v1, -0x1

    aput-byte v3, v0, p2

    :goto_b8
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_1df

    :cond_c4
    iget-char p2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    const/16 v2, 0x100

    if-ge p2, v2, :cond_e3

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d7

    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    goto :goto_dd

    :cond_d7
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0xf

    aput-byte v3, v0, v2

    :goto_dd
    add-int/lit8 v2, v1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    goto :goto_7d

    :cond_e3
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_f0

    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x13

    aput-byte v3, v0, v2

    goto :goto_f6

    :cond_f0
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x12

    aput-byte v3, v0, v2

    :goto_f6
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_1df

    :cond_fc
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_1df

    :cond_104
    :goto_104
    iget-object p2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    add-int/lit8 v2, v1, 0x2

    iget-object v3, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x20

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    invoke-static {p0, p1, v2, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    aput-byte v4, v0, p2

    add-int/lit8 p2, v1, 0x2

    invoke-static {v0, v3, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto/16 :goto_1df

    :cond_12b
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x1e

    aput-byte v2, v0, p2

    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_1df

    :cond_145
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-nez v2, :cond_15b

    iget v3, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v3, v4, :cond_15b

    add-int/lit8 p2, v1, -0x1

    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_156

    const/16 v2, 0x1a

    goto :goto_158

    :cond_156
    const/16 v2, 0x2d

    :goto_158
    aput-byte v2, v0, p2

    goto :goto_198

    :cond_15b
    if-nez v2, :cond_16f

    iget v3, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v3, p2, :cond_16f

    add-int/lit8 p2, v1, -0x1

    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_16a

    const/16 v2, 0x1c

    goto :goto_16c

    :cond_16a
    const/16 v2, 0x2f

    :goto_16c
    aput-byte v2, v0, p2

    goto :goto_198

    :cond_16f
    if-ne v2, p2, :cond_183

    iget v3, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    if-ne v3, v4, :cond_183

    add-int/lit8 p2, v1, -0x1

    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v2, :cond_17e

    const/16 v2, 0x1b

    goto :goto_180

    :cond_17e
    const/16 v2, 0x2e

    :goto_180
    aput-byte v2, v0, p2

    goto :goto_198

    :cond_183
    iget-boolean v3, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-nez v3, :cond_18d

    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x30

    aput-byte v4, v0, v3

    :cond_18d
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result v1

    :goto_198
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    add-int/lit8 v1, p2, 0x2

    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    :try_start_1a8
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result v1
    :try_end_1ac
    .catchall {:try_start_1a8 .. :try_end_1ac} :catchall_1e4

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x31

    aput-byte v3, v0, v1

    invoke-static {v0, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto/16 :goto_7d

    :cond_1b7
    iget-boolean p2, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    if-nez p2, :cond_1c1

    add-int/lit8 p2, v1, -0x1

    const/16 v2, 0x17

    aput-byte v2, v0, p2

    :cond_1c1
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    iget-object v1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    new-instance v3, Lorg/mozilla/javascript/regexp/RECharSet;

    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    iget-boolean v7, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/mozilla/javascript/regexp/RECharSet;-><init>(IIIZ)V

    aput-object v3, v1, v2

    goto :goto_1df

    :cond_1db
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_31

    :goto_1df
    iget-object p3, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto/16 :goto_2

    :cond_1e3
    return p2

    :catchall_1e4
    move-exception p0

    goto :goto_1e7

    :goto_1e6
    throw p0

    :goto_1e7
    goto :goto_1e6

    :pswitch_data_1e8
    .packed-switch 0x35
        :pswitch_34  #00000035
        :pswitch_34  #00000036
        :pswitch_34  #00000037
    .end packed-switch
.end method

.method private static escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    const/4 v4, -0x1

    if-le v1, v4, :cond_33

    if-eq v1, v3, :cond_1b

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_2c

    :cond_1b
    if-nez v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_22
    invoke-virtual {v2, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v3, "\\/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_c

    :cond_33
    if-eqz v2, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_40
    return-object p0
.end method

.method private execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 14

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object v3

    array-length v0, p3

    const/4 v7, 0x0

    if-nez v0, :cond_13

    iget-object p3, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    if-nez p3, :cond_19

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_19

    :cond_13
    aget-object p3, p3, v7

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_19
    :goto_19
    move-object v4, p3

    iget-object p3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p3, p3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    const/4 v8, 0x1

    and-int/2addr p3, v8

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_2b

    iget-object p3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    goto :goto_2c

    :cond_2b
    move-wide v5, v0

    :goto_2c
    cmpg-double p3, v5, v0

    if-ltz p3, :cond_67

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p3

    int-to-double v0, p3

    cmpg-double p3, v0, v5

    if-gez p3, :cond_3a

    goto :goto_67

    :cond_3a
    new-array p3, v8, [I

    double-to-int v0, v5

    aput v0, p3, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p2, p2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p2, v8

    if-eqz p2, :cond_6d

    if-eqz p1, :cond_61

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_56

    goto :goto_61

    :cond_56
    aget p2, p3, v7

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    goto :goto_6d

    :cond_61
    :goto_61
    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    goto :goto_6d

    :cond_67
    :goto_67
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :cond_6d
    :goto_6d
    return-object p1
.end method

.method private static executeREBytecode(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z
    .registers 26

    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v9, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/4 v10, 0x0

    aget-byte v11, v9, v10

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    const/16 v12, 0x39

    const/16 v14, 0x34

    const/4 v15, 0x1

    const/16 v16, 0x1

    if-gez v0, :cond_4a

    invoke-static {v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    :goto_1c
    iget v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-gt v0, v8, :cond_42

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-ltz v0, :cond_37

    add-int/lit8 v16, v0, 0x1

    aget-byte v11, v9, v0

    const/4 v0, 0x1

    goto :goto_43

    :cond_37
    iget v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v0, v15

    iput v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    iget v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, v15

    iput v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto :goto_1c

    :cond_42
    const/4 v0, 0x0

    :goto_43
    if-nez v0, :cond_46

    return v10

    :cond_46
    move v2, v11

    move/from16 v11, v16

    goto :goto_4c

    :cond_4a
    move v2, v11

    const/4 v11, 0x1

    :goto_4c
    const/16 v16, 0x0

    const/16 v17, 0x39

    const/16 v18, 0x0

    :goto_52
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v9

    move v4, v11

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-ltz v0, :cond_69

    const/4 v1, 0x1

    goto :goto_6a

    :cond_69
    const/4 v1, 0x0

    :goto_6a
    if-eqz v1, :cond_6d

    move v11, v0

    :cond_6d
    move/from16 v18, v1

    goto/16 :goto_2fc

    :cond_71
    if-eq v2, v12, :cond_438

    const/4 v6, -0x1

    packed-switch v2, :pswitch_data_43a

    const/16 v5, 0x2c

    packed-switch v2, :pswitch_data_44e

    packed-switch v2, :pswitch_data_464

    const-string v0, "invalid bytecode"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_86  #0x35, 0x36, 0x37
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    int-to-char v0, v0

    add-int/lit8 v11, v11, 0x2

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    int-to-char v1, v1

    add-int/lit8 v11, v11, 0x2

    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ne v3, v8, :cond_9c

    :goto_98
    const/16 v18, 0x0

    goto/16 :goto_2fc

    :cond_9c
    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x37

    if-ne v2, v4, :cond_b5

    if-eq v3, v0, :cond_34d

    iget-object v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object v0, v0, v1

    invoke-static {v7, v0, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result v0

    if-nez v0, :cond_34d

    goto :goto_98

    :cond_b5
    const/16 v4, 0x36

    if-ne v2, v4, :cond_bd

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v3

    :cond_bd
    if-eq v3, v0, :cond_34d

    if-eq v3, v1, :cond_34d

    goto :goto_98

    :pswitch_c2  #0x34
    move-object/from16 v5, p1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v4

    if-nez v18, :cond_118

    iget v2, v4, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eq v2, v6, :cond_d7

    if-lez v2, :cond_d1

    goto :goto_d7

    :cond_d1
    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    goto/16 :goto_1a0

    :cond_d7
    :goto_d7
    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/16 v16, 0x0

    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v4, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v19, v4

    move-object/from16 v4, v16

    move/from16 v5, v17

    const/4 v12, -0x1

    move/from16 v6, v19

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v1, v11, 0x2

    invoke-static {v9, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    :goto_fe
    if-ge v3, v0, :cond_108

    add-int v4, v2, v3

    invoke-virtual {v7, v4, v12, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_fe

    :cond_108
    add-int/lit8 v16, v1, 0x1

    aget-byte v2, v9, v1

    :goto_10c
    const/16 v12, 0x39

    const/16 v17, 0x34

    :goto_110
    move/from16 v22, v16

    move/from16 v16, v11

    move/from16 v11, v22

    goto/16 :goto_52

    :cond_118
    const/4 v12, -0x1

    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v0, :cond_129

    iget v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v2, v4, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v1, v2, :cond_129

    iget v0, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    goto/16 :goto_1bb

    :cond_129
    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eqz v0, :cond_12f

    add-int/lit8 v0, v0, -0x1

    :cond_12f
    move/from16 v16, v0

    if-eq v1, v12, :cond_135

    add-int/lit8 v1, v1, -0x1

    :cond_135
    move v2, v1

    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v5, 0x0

    iget v6, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v1, v4, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v0, p0

    move/from16 v17, v1

    move/from16 v1, v16

    move-object v13, v4

    move-object v4, v5

    move v5, v6

    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-eqz v16, :cond_169

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v1, v11, 0x2

    invoke-static {v9, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    :goto_15a
    if-ge v3, v0, :cond_164

    add-int v4, v2, v3

    invoke-virtual {v7, v4, v12, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15a

    :cond_164
    add-int/lit8 v16, v1, 0x1

    aget-byte v2, v9, v1

    goto :goto_10c

    :cond_169
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    invoke-static {v7, v14, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    add-int/lit8 v11, v11, 0x4

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v11, v2

    add-int/lit8 v2, v11, 0x1

    aget-byte v3, v9, v11

    move/from16 v16, v0

    move/from16 v17, v1

    move v11, v2

    move v2, v3

    const/16 v12, 0x39

    goto/16 :goto_52

    :pswitch_188  #0x33
    const/4 v12, -0x1

    :goto_189
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v13

    if-nez v18, :cond_1a6

    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v0, :cond_195

    const/16 v18, 0x1

    :cond_195
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v11, v11, 0x4

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v11, v2

    :goto_1a0
    move/from16 v16, v0

    move/from16 v17, v1

    goto/16 :goto_2fc

    :cond_1a6
    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v0, :cond_1c1

    iget v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v2, v13, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v1, v2, :cond_1c1

    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v11, v11, 0x4

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v11, v2

    :goto_1bb
    move/from16 v16, v0

    move/from16 v17, v1

    goto/16 :goto_98

    :cond_1c1
    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-eqz v0, :cond_1c7

    add-int/lit8 v0, v0, -0x1

    :cond_1c7
    move/from16 v16, v0

    if-eq v1, v12, :cond_1cd

    add-int/lit8 v1, v1, -0x1

    :cond_1cd
    move/from16 v17, v1

    if-nez v17, :cond_1e4

    iget v0, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v11, v11, 0x4

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v11, v2

    move/from16 v16, v0

    move/from16 v17, v1

    const/16 v18, 0x1

    goto/16 :goto_2fc

    :cond_1e4
    add-int/lit8 v0, v11, 0x6

    aget-byte v2, v9, v0

    iget v6, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v1

    if-eqz v1, :cond_222

    add-int/lit8 v4, v0, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v9

    move/from16 v5, p2

    move/from16 v20, v6

    move/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-gez v0, :cond_21d

    if-nez v16, :cond_209

    const/4 v0, 0x1

    goto :goto_20a

    :cond_209
    const/4 v0, 0x0

    :goto_20a
    iget v1, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v2, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    add-int/lit8 v11, v11, 0x4

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v3

    add-int/2addr v11, v3

    move/from16 v18, v0

    move/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_2fc

    :cond_21d
    move/from16 v18, v0

    const/16 v21, 0x1

    goto :goto_228

    :cond_222
    move/from16 v20, v6

    move/from16 v21, v18

    move/from16 v18, v0

    :goto_228
    const/4 v4, 0x0

    iget v5, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v6, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-nez v16, :cond_25d

    const/16 v1, 0x33

    iget v4, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v5, v13, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object/from16 v0, p0

    move v2, v11

    move/from16 v3, v20

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v1, v11, 0x2

    invoke-static {v9, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v1

    const/4 v2, 0x0

    :goto_253
    if-ge v2, v0, :cond_25d

    add-int v3, v1, v2

    invoke-virtual {v7, v3, v12, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_253

    :cond_25d
    aget-byte v0, v9, v18

    const/16 v1, 0x31

    if-eq v0, v1, :cond_26f

    add-int/lit8 v16, v18, 0x1

    aget-byte v2, v9, v18

    move/from16 v18, v21

    const/16 v12, 0x39

    const/16 v17, 0x33

    goto/16 :goto_110

    :cond_26f
    move/from16 v18, v21

    goto/16 :goto_189

    :pswitch_273  #0x31
    move/from16 v11, v16

    move/from16 v2, v17

    const/16 v18, 0x1

    goto/16 :goto_52

    :pswitch_27b  #0x19, 0x1a, 0x1b, 0x1c, 0x2d, 0x2e, 0x2f, 0x30
    const/4 v12, -0x1

    goto/16 :goto_3bb

    :pswitch_27e  #0x2b, 0x2c
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v0

    iget v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    iput v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->backTrack:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    iget v0, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    if-ne v2, v5, :cond_292

    xor-int/lit8 v18, v18, 0x1

    :cond_292
    move/from16 v17, v0

    move/from16 v16, v1

    goto/16 :goto_2fc

    :pswitch_298  #0x2a
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int v12, v11, v0

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v9, v11

    invoke-static {v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_2c1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object v3, v9

    move v4, v13

    const/16 v14, 0x2c

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-ltz v0, :cond_2c3

    aget-byte v0, v9, v0

    if-ne v0, v14, :cond_2c3

    goto :goto_2f9

    :cond_2c1
    const/16 v14, 0x2c

    :cond_2c3
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v4, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object/from16 v0, p0

    move/from16 v5, v17

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    invoke-static {v7, v14, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    goto/16 :goto_340

    :pswitch_2d7  #0x29
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int v12, v11, v0

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v9, v11

    invoke-static {v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_32c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move-object v3, v9

    move v4, v13

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-gez v0, :cond_32c

    :goto_2f9
    move v11, v13

    goto/16 :goto_98

    :goto_2fc
    if-nez v18, :cond_326

    iget-object v0, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    if-eqz v0, :cond_325

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    iput-object v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    iget v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    iput v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iget v1, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationOp:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationPc:I

    iget v11, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->pc:I

    iget v0, v0, Lorg/mozilla/javascript/regexp/REBackTrackData;->op:I

    move/from16 v17, v1

    move/from16 v16, v2

    const/16 v12, 0x39

    const/16 v14, 0x34

    move v2, v0

    goto/16 :goto_52

    :cond_325
    return v10

    :cond_326
    add-int/lit8 v0, v11, 0x1

    aget-byte v2, v9, v11

    goto/16 :goto_3b4

    :cond_32c
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget-object v4, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object/from16 v0, p0

    move/from16 v5, v17

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    const/16 v0, 0x2b

    invoke-static {v7, v0, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    :goto_340
    move v2, v11

    goto :goto_38e

    :pswitch_342  #0x20
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v0

    add-int/2addr v11, v0

    add-int/lit8 v0, v11, 0x1

    aget-byte v2, v9, v11

    goto/16 :goto_3b4

    :cond_34d
    :pswitch_34d  #0x1f
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v0

    add-int v12, v11, v0

    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v4, v11, 0x1

    aget-byte v2, v9, v11

    iget v11, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    move-result v0

    if-eqz v0, :cond_37d

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v9

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    move-result v0

    if-gez v0, :cond_374

    add-int/lit8 v11, v12, 0x1

    aget-byte v2, v9, v12

    goto :goto_3b5

    :cond_374
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v9, v0

    move v6, v0

    move v13, v1

    const/16 v18, 0x1

    goto :goto_37f

    :cond_37d
    move v6, v2

    move v13, v4

    :goto_37f
    add-int/lit8 v2, v12, 0x1

    aget-byte v1, v9, v12

    move-object/from16 v0, p0

    move v3, v11

    move/from16 v4, v17

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    move v2, v6

    :goto_38e
    move v11, v13

    goto :goto_3b5

    :pswitch_390  #0x1e
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v1

    iget v2, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    sub-int/2addr v2, v1

    invoke-virtual {v7, v0, v1, v2}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v0, v11, 0x1

    aget-byte v2, v9, v11

    goto :goto_3b4

    :pswitch_3a5  #0x1d
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    add-int/lit8 v11, v11, 0x2

    iget v1, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    invoke-virtual {v7, v0, v1, v10}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    add-int/lit8 v0, v11, 0x1

    aget-byte v2, v9, v11

    :goto_3b4
    move v11, v0

    :goto_3b5
    const/16 v12, 0x39

    const/16 v14, 0x34

    goto/16 :goto_52

    :goto_3bb
    packed-switch v2, :pswitch_data_472

    packed-switch v2, :pswitch_data_47e

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_3c6  #0x30
    const/4 v0, 0x0

    goto :goto_3de

    :pswitch_3c8  #0x2f
    const/4 v0, 0x0

    goto :goto_3cf

    :pswitch_3ca  #0x2e
    const/4 v0, 0x0

    goto :goto_3d3

    :pswitch_3cc  #0x2d
    const/4 v0, 0x0

    goto :goto_3d8

    :pswitch_3ce  #0x1c
    const/4 v0, 0x1

    :goto_3cf
    move v13, v11

    const/4 v2, 0x1

    goto :goto_3da

    :pswitch_3d2  #0x1b
    const/4 v0, 0x1

    :goto_3d3
    move v13, v11

    const/4 v2, -0x1

    const/4 v12, 0x1

    goto :goto_3db

    :pswitch_3d7  #0x1a
    const/4 v0, 0x1

    :goto_3d8
    move v13, v11

    const/4 v2, -0x1

    :goto_3da
    const/4 v12, 0x0

    :goto_3db
    move v11, v0

    goto :goto_3ee

    :pswitch_3dd  #0x19
    const/4 v0, 0x1

    :goto_3de
    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v1

    add-int/lit8 v11, v11, 0x2

    invoke-static {v9, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    sub-int/2addr v2, v15

    add-int/lit8 v11, v11, 0x2

    move v12, v1

    move v13, v11

    goto :goto_3db

    :goto_3ee
    iget v3, v7, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v5, v17

    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    if-eqz v11, :cond_411

    const/16 v0, 0x33

    invoke-static {v7, v0, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    add-int/lit8 v1, v13, 0x6

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v9, v1

    move v11, v2

    move/from16 v16, v13

    const/16 v17, 0x33

    :goto_40d
    move v2, v1

    const/16 v1, 0x34

    goto :goto_3b5

    :cond_411
    const/16 v0, 0x33

    if-eqz v12, :cond_421

    add-int/lit8 v1, v13, 0x6

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v9, v1

    move v11, v2

    move/from16 v16, v13

    const/16 v17, 0x34

    goto :goto_40d

    :cond_421
    const/16 v1, 0x34

    invoke-static {v7, v1, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    add-int/lit8 v13, v13, 0x4

    invoke-static {v9, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v2

    add-int/2addr v13, v2

    add-int/lit8 v2, v13, 0x1

    aget-byte v3, v9, v13

    move v11, v2

    move v2, v3

    goto/16 :goto_3b5

    :cond_438
    return v15

    nop

    :pswitch_data_43a
    .packed-switch 0x19
        :pswitch_27b  #00000019
        :pswitch_27b  #0000001a
        :pswitch_27b  #0000001b
        :pswitch_27b  #0000001c
        :pswitch_3a5  #0000001d
        :pswitch_390  #0000001e
        :pswitch_34d  #0000001f
        :pswitch_342  #00000020
    .end packed-switch

    :pswitch_data_44e
    .packed-switch 0x29
        :pswitch_2d7  #00000029
        :pswitch_298  #0000002a
        :pswitch_27e  #0000002b
        :pswitch_27e  #0000002c
        :pswitch_27b  #0000002d
        :pswitch_27b  #0000002e
        :pswitch_27b  #0000002f
        :pswitch_27b  #00000030
        :pswitch_273  #00000031
    .end packed-switch

    :pswitch_data_464
    .packed-switch 0x33
        :pswitch_188  #00000033
        :pswitch_c2  #00000034
        :pswitch_86  #00000035
        :pswitch_86  #00000036
        :pswitch_86  #00000037
    .end packed-switch

    :pswitch_data_472
    .packed-switch 0x19
        :pswitch_3dd  #00000019
        :pswitch_3d7  #0000001a
        :pswitch_3d2  #0000001b
        :pswitch_3ce  #0000001c
    .end packed-switch

    :pswitch_data_47e
    .packed-switch 0x2d
        :pswitch_3cc  #0000002d
        :pswitch_3ca  #0000002e
        :pswitch_3c8  #0000002f
        :pswitch_3c6  #00000030
    .end packed-switch
.end method

.method private static flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .registers 9

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    if-le v0, p4, :cond_7

    return v1

    :cond_7
    iget-object p4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object p4, p4, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p2, :cond_29

    add-int v2, p1, v0

    aget-char v2, p4, v2

    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v3, v0

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_26

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v3

    if-eq v2, v3, :cond_26

    return v1

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_29
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, 0x1

    return p0
.end method

.method private static flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .registers 8

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    if-le v0, p4, :cond_7

    return v1

    :cond_7
    const/4 p4, 0x0

    :goto_8
    if-ge p4, p2, :cond_1f

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int v2, p1, p4

    aget-char v0, v0, v2

    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 p4, p4, 0x1

    goto :goto_8

    :cond_1f
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, 0x1

    return p0
.end method

.method private static getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I
    .registers 9

    iget v0, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget-object v1, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    add-int/lit8 p0, p0, -0x30

    const/4 v2, 0x0

    :goto_7
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_29

    aget-char v3, v1, v3

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_29

    :cond_16
    const/4 v4, 0x1

    if-nez v2, :cond_23

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr p0, v3

    if-ge p0, p2, :cond_21

    goto :goto_23

    :cond_21
    move p0, p2

    const/4 v2, 0x1

    :cond_23
    :goto_23
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v3, v4

    iput v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_7

    :cond_29
    :goto_29
    if-eqz v2, :cond_35

    iget p1, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr p1, v0

    invoke-static {v1, v0, p1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return p0
.end method

.method private static getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    return-object p0
.end method

.method private static getIndex([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static getOffset([BI)I
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    return p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 7

    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p0

    iput-object p0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    new-instance p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;

    invoke-direct {p0}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;-><init>()V

    const-string v1, "constructor"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/BaseFunction;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    if-eqz p2, :cond_37

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_37
    const-string p2, "RegExp"

    invoke-static {p1, p2, p0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static isControlLetter(C)Z
    .registers 2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-gt v0, p0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method static isDigit(C)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static isLineTerm(C)Z
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p0

    return p0
.end method

.method private static isREWhiteSpace(I)Z
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result p0

    return p0
.end method

.method private static isWord(C)Z
    .registers 2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1d

    :cond_8
    const/16 v0, 0x41

    if-gt v0, p0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1d

    :cond_10
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1d

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method private static matchRegExp(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z
    .registers 13

    iget v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    goto :goto_c

    :cond_a
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    :goto_c
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p5, :cond_1d

    iget p5, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p5, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p5, 0x1

    :goto_1e
    iput-boolean p5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p5, p1, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    move v3, p3

    :goto_25
    if-gt v3, p4, :cond_76

    if-ltz p5, :cond_49

    :goto_29
    if-ne v3, p4, :cond_2c

    return v0

    :cond_2c
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, p5, :cond_49

    iget-object v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_46

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    int-to-char v5, p5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    if-ne v4, v5, :cond_46

    goto :goto_49

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_49
    :goto_49
    iput v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    sub-int/2addr v3, p3

    iput v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    const/4 v3, 0x0

    :goto_4f
    iget v4, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v3, v4, :cond_5c

    iget-object v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    const-wide/16 v5, -0x1

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_5c
    invoke-static {p0, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeREBytecode(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z

    move-result v3

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    if-eqz v3, :cond_67

    return v2

    :cond_67
    const/4 v3, -0x2

    if-ne p5, v3, :cond_71

    iget-boolean v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-nez v3, :cond_71

    iput p4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    return v0

    :cond_71
    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v3, p3

    add-int/2addr v3, v2

    goto :goto_25

    :cond_76
    return v0
.end method

.method private static parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    const/4 v1, 0x0

    move-object v2, v1

    :cond_4
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_33

    aget-char v4, v0, v3

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_33

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v4, :cond_1b

    aget-char v3, v0, v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1b

    goto :goto_33

    :cond_1b
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_23

    const/4 p0, 0x0

    return p0

    :cond_23
    if-nez v1, :cond_29

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    move-object v2, v1

    goto :goto_2d

    :cond_29
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    :goto_2d
    iget-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v3, :cond_4

    move-object v2, v3

    goto :goto_2d

    :cond_33
    :goto_33
    const/4 v0, 0x1

    if-nez v1, :cond_3e

    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_40

    :cond_3e
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    :goto_40
    return v0
.end method

.method private static parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .registers 12

    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v3, v0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_a3

    aget-char v0, v0, v2

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_a3

    add-int/2addr v2, v4

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v2, 0x1f

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v3, v2, Lorg/mozilla/javascript/regexp/RENode;->op:B

    const/16 v5, 0xe

    if-ne v3, v5, :cond_59

    iget-byte v6, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v6, v5, :cond_59

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_46

    const/16 v3, 0x35

    goto :goto_48

    :cond_46
    const/16 v3, 0x36

    :goto_48
    iput-byte v3, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-char v2, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_a3

    :cond_59
    const/16 v6, 0x37

    const/16 v7, 0x100

    const/16 v8, 0x16

    if-ne v3, v8, :cond_7e

    iget v9, v2, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-ge v9, v7, :cond_7e

    iget-byte v10, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v10, v5, :cond_7e

    iget v10, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_7e

    iput-byte v6, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v9, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_a3

    :cond_7e
    if-ne v3, v5, :cond_9d

    iget-byte v3, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    if-ne v3, v8, :cond_9d

    iget v1, v1, Lorg/mozilla/javascript/regexp/RENode;->index:I

    if-ge v1, v7, :cond_9d

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_9d

    iput-byte v6, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    iget-char v2, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0xd

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_a3

    :cond_9d
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_a3
    :goto_a3
    return v4
.end method

.method private static parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .registers 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v1, v2

    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    const/16 v5, 0x24

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v5, :cond_3ff

    const/16 v5, 0x2e

    const/16 v8, 0x2a

    const/4 v9, 0x6

    const/16 v12, 0x3f

    const/4 v14, 0x0

    if-eq v2, v5, :cond_2f7

    if-eq v2, v12, :cond_2ea

    const/16 v5, 0x5e

    const/4 v15, 0x2

    if-eq v2, v5, :cond_2dd

    const/16 v5, 0x5b

    const/16 v13, 0x5c

    const-string v10, ""

    if-eq v2, v5, :cond_28f

    const/16 v5, 0xe

    const/4 v11, 0x4

    if-eq v2, v13, :cond_d3

    packed-switch v2, :pswitch_data_40c

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v2, v3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v7, v3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v2, v7

    iput v2, v3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_303

    :pswitch_4c  #0x29
    const-string v0, "msg.re.unmatched.right.paren"

    invoke-static {v0, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :pswitch_52  #0x28
    const/4 v2, 0x0

    add-int/lit8 v5, v3, 0x1

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v5, v6, :cond_8e

    aget-char v5, v1, v3

    if-ne v5, v12, :cond_8e

    add-int/lit8 v5, v3, 0x1

    aget-char v5, v1, v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_6d

    const/16 v13, 0x21

    if-eq v5, v13, :cond_6d

    const/16 v13, 0x3a

    if-ne v5, v13, :cond_8e

    :cond_6d
    add-int/2addr v3, v15

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    if-ne v5, v6, :cond_7f

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v11

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_a2

    :cond_7f
    const/16 v3, 0x21

    if-ne v5, v3, :cond_a2

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v8}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v11

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_a2

    :cond_8e
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v9

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    :cond_a2
    :goto_a2
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_ae

    return v14

    :cond_ae
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v5, :cond_cd

    aget-char v5, v1, v3

    const/16 v6, 0x29

    if-eq v5, v6, :cond_bb

    goto :goto_cd

    :cond_bb
    add-int/2addr v3, v7

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    sub-int/2addr v3, v7

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v2, :cond_303

    iget-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto/16 :goto_303

    :cond_cd
    :goto_cd
    const-string v0, "msg.unterm.paren"

    invoke-static {v0, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_d3
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v3, v2, :cond_288

    add-int/lit8 v9, v3, 0x1

    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v1, v3

    const/16 v12, 0x42

    if-eq v3, v12, :cond_27a

    const/16 v12, 0x44

    if-eq v3, v12, :cond_26a

    const/16 v12, 0x53

    if-eq v3, v12, :cond_25a

    const/16 v12, 0x57

    const/16 v8, 0xa

    if-eq v3, v12, :cond_24a

    const/16 v12, 0x66

    if-eq v3, v12, :cond_243

    const/16 v12, 0x6e

    if-eq v3, v12, :cond_23e

    const/16 v8, 0xd

    const-string v12, "msg.bad.backref"

    const/16 v14, 0x30

    packed-switch v3, :pswitch_data_418

    packed-switch v3, :pswitch_data_430

    const/16 v2, 0xb

    packed-switch v3, :pswitch_data_43a

    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v3, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    iput v7, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v3, v7

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_303

    :pswitch_11f  #0x78
    const/4 v11, 0x2

    goto :goto_136

    :pswitch_121  #0x77
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_303

    :pswitch_131  #0x76
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :goto_136
    :pswitch_136  #0x75
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_138
    if-ge v2, v11, :cond_15a

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v5, v6, :cond_15a

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v5, v1, v5

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v3

    if-gez v3, :cond_157

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v2, v15

    sub-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v1, v3

    goto :goto_15a

    :cond_157
    add-int/lit8 v2, v2, 0x1

    goto :goto_138

    :cond_15a
    :goto_15a
    int-to-char v2, v3

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :pswitch_160  #0x74
    const/16 v2, 0x9

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :pswitch_167  #0x73
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_303

    :pswitch_175  #0x72
    invoke-static {v0, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :pswitch_17a  #0x64
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_303

    :pswitch_189  #0x63
    if-ge v9, v2, :cond_19f

    aget-char v2, v1, v9

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v2

    if-eqz v2, :cond_19f

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v1, v2

    and-int/lit8 v2, v2, 0x1f

    int-to-char v13, v2

    goto :goto_1a4

    :cond_19f
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v2, v7

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    :goto_1a4
    invoke-static {v0, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :pswitch_1a9  #0x62
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v11}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v7

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v7

    :pswitch_1b6  #0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    sub-int/2addr v9, v7

    const-string v2, "msg.overlarge.backref"

    const v5, 0xffff

    invoke-static {v3, v0, v5, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v2

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    if-le v2, v5, :cond_1c9

    iget-object v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    invoke-static {v5, v12, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c9
    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    if-le v2, v5, :cond_1fe

    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/16 v2, 0x38

    if-lt v3, v2, :cond_1d8

    invoke-static {v0, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :cond_1d8
    add-int/2addr v9, v7

    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v3, v14

    :goto_1dc
    const/16 v2, 0x20

    if-ge v3, v2, :cond_1f8

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v5, :cond_1f8

    aget-char v5, v1, v2

    if-lt v5, v14, :cond_1f8

    const/16 v6, 0x37

    if-gt v5, v6, :cond_1f8

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v3, v5

    goto :goto_1dc

    :cond_1f8
    int-to-char v2, v3

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :cond_1fe
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v8}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    add-int/lit8 v5, v2, -0x1

    iput v5, v3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v6

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    if-ge v3, v2, :cond_303

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    goto/16 :goto_303

    :pswitch_216  #0x30
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    invoke-static {v2, v12, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_21c
    const/16 v3, 0x20

    if-ge v2, v3, :cond_238

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v3, v5, :cond_238

    aget-char v5, v1, v3

    if-lt v5, v14, :cond_238

    const/16 v6, 0x37

    if-gt v5, v6, :cond_238

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    goto :goto_21c

    :cond_238
    int-to-char v2, v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :cond_23e
    invoke-static {v0, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :cond_243
    const/16 v2, 0xc

    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    goto/16 :goto_303

    :cond_24a
    const/16 v2, 0xc

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v8}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_303

    :cond_25a
    const/16 v2, 0xc

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_303

    :cond_26a
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto/16 :goto_303

    :cond_27a
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v7

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v7

    :cond_288
    const-string v0, "msg.trail.backslash"

    invoke-static {v0, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28d
    const/4 v0, 0x0

    return v0

    :cond_28f
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    :goto_29c
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v2, v5, :cond_2a8

    const-string v0, "msg.unterm.class"

    invoke-static {v0, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28d

    :cond_2a8
    aget-char v5, v1, v2

    if-ne v5, v13, :cond_2b1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_2d7

    :cond_2b1
    aget-char v5, v1, v2

    const/16 v8, 0x5d

    if-ne v5, v8, :cond_2d7

    iget-object v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    sub-int v8, v2, v3

    iput v8, v5, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    iget v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    iput v8, v5, Lorg/mozilla/javascript/regexp/RENode;->index:I

    add-int/lit8 v8, v2, 0x1

    iput v8, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    invoke-static {v0, v5, v1, v3, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z

    move-result v2

    if-nez v2, :cond_2d1

    const/4 v2, 0x0

    return v2

    :cond_2d1
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_303

    :cond_2d7
    :goto_2d7
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_29c

    :cond_2dd
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v15}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v7

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v7

    :cond_2ea
    :pswitch_2ea  #0x2a, 0x2b
    sub-int/2addr v3, v7

    aget-char v0, v1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.bad.quant"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28d

    :cond_2f7
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v2, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_303
    :goto_303
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v3, v5, :cond_30c

    return v7

    :cond_30c
    aget-char v5, v1, v3

    const/4 v6, -0x1

    const/16 v8, 0x19

    const/16 v9, 0x2a

    if-eq v5, v9, :cond_3c4

    const/16 v9, 0x2b

    if-eq v5, v9, :cond_3b1

    const/16 v9, 0x3f

    if-eq v5, v9, :cond_39d

    const/16 v9, 0x7b

    if-eq v5, v9, :cond_324

    const/4 v5, 0x0

    goto/16 :goto_3d8

    :cond_324
    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v9, v1

    if-ge v5, v9, :cond_397

    aget-char v5, v1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_397

    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v9, v7

    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const-string v9, "msg.overlarge.min"

    const v10, 0xffff

    invoke-static {v5, v0, v10, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v5

    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v10, v1

    if-ge v9, v10, :cond_397

    aget-char v10, v1, v9

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_37e

    add-int/2addr v9, v7

    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v11, v1

    if-ge v9, v11, :cond_37e

    aget-char v10, v1, v9

    invoke-static {v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_37f

    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v9, v7

    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    array-length v11, v1

    if-ge v9, v11, :cond_37f

    const-string v6, "msg.overlarge.max"

    const v9, 0xffff

    invoke-static {v10, v0, v9, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v6

    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v10, v1, v9

    if-le v5, v6, :cond_37f

    aget-char v0, v1, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.max.lt.min"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28d

    :cond_37e
    move v6, v5

    :cond_37f
    const/16 v9, 0x7d

    if-ne v10, v9, :cond_397

    new-instance v9, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v9, v8}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v5, v9, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iput v6, v9, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    const/16 v6, 0xc

    add-int/2addr v5, v6

    iput v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    const/4 v5, 0x1

    goto :goto_398

    :cond_397
    const/4 v5, 0x0

    :goto_398
    if-nez v5, :cond_3d8

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_3d8

    :cond_39d
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v8}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v5, 0x0

    iput v5, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iput v7, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    const/16 v5, 0x8

    add-int/2addr v3, v5

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_3d7

    :cond_3b1
    const/16 v5, 0x8

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v8}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v7, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iput v6, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v5

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_3d7

    :cond_3c4
    const/16 v5, 0x8

    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v8}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v8, 0x0

    iput v8, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    iput v6, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v3, v5

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :goto_3d7
    const/4 v5, 0x1

    :cond_3d8
    :goto_3d8
    if-nez v5, :cond_3db

    return v7

    :cond_3db
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/2addr v3, v7

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget-object v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v2, v5, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    iput v4, v5, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    sub-int/2addr v2, v4

    iput v2, v5, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v3, v2, :cond_3fc

    aget-char v1, v1, v3

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_3fc

    add-int/2addr v3, v7

    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/4 v0, 0x0

    iput-boolean v0, v5, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    goto :goto_3fe

    :cond_3fc
    iput-boolean v7, v5, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    :goto_3fe
    return v7

    :cond_3ff
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/2addr v1, v7

    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return v7

    :pswitch_data_40c
    .packed-switch 0x28
        :pswitch_52  #00000028
        :pswitch_4c  #00000029
        :pswitch_2ea  #0000002a
        :pswitch_2ea  #0000002b
    .end packed-switch

    :pswitch_data_418
    .packed-switch 0x30
        :pswitch_216  #00000030
        :pswitch_1b6  #00000031
        :pswitch_1b6  #00000032
        :pswitch_1b6  #00000033
        :pswitch_1b6  #00000034
        :pswitch_1b6  #00000035
        :pswitch_1b6  #00000036
        :pswitch_1b6  #00000037
        :pswitch_1b6  #00000038
        :pswitch_1b6  #00000039
    .end packed-switch

    :pswitch_data_430
    .packed-switch 0x62
        :pswitch_1a9  #00000062
        :pswitch_189  #00000063
        :pswitch_17a  #00000064
    .end packed-switch

    :pswitch_data_43a
    .packed-switch 0x72
        :pswitch_175  #00000072
        :pswitch_167  #00000073
        :pswitch_160  #00000074
        :pswitch_136  #00000075
        :pswitch_131  #00000076
        :pswitch_121  #00000077
        :pswitch_11f  #00000078
    .end packed-switch
.end method

.method private static popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->previous:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-object v0
.end method

.method private static processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .registers 3

    monitor-enter p1

    :try_start_1
    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v0, :cond_b

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    :cond_b
    monitor-exit p1

    return-void

    :catchall_d
    move-exception p0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private static processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->startIndex:I

    iget v3, v1, Lorg/mozilla/javascript/regexp/RECharSet;->strlength:I

    add-int/2addr v3, v2

    iget v4, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    add-int/lit8 v4, v4, 0x7

    const/16 v5, 0x8

    div-int/2addr v4, v5

    new-array v4, v4, [B

    iput-object v4, v1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    if-ne v2, v3, :cond_17

    return-void

    :cond_17
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v4, v4, v2

    const/16 v6, 0x5e

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v6, :cond_25

    add-int/lit8 v2, v2, 0x1

    :cond_25
    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_27
    :goto_27
    if-eq v2, v3, :cond_1c1

    iget-object v9, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v9, v9, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v10, v9, v2

    const/16 v11, 0x5c

    const/4 v12, 0x2

    const/16 v13, 0x2d

    if-eq v10, v11, :cond_3d

    add-int/lit8 v10, v2, 0x1

    aget-char v11, v9, v2

    :goto_3a
    move v2, v10

    goto/16 :goto_122

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v10, v2, 0x1

    aget-char v2, v9, v2

    const/16 v14, 0x44

    if-eq v2, v14, :cond_1aa

    const/16 v14, 0x53

    if-eq v2, v14, :cond_192

    const/16 v14, 0x57

    if-eq v2, v14, :cond_17a

    const/16 v14, 0x66

    if-eq v2, v14, :cond_11e

    const/16 v14, 0x6e

    if-eq v2, v14, :cond_11a

    const/16 v14, 0x30

    packed-switch v2, :pswitch_data_1c2

    packed-switch v2, :pswitch_data_1d6

    packed-switch v2, :pswitch_data_1e0

    move v11, v2

    goto :goto_3a

    :pswitch_64  #0x78
    const/4 v2, 0x2

    goto :goto_82

    :pswitch_66  #0x77
    if-eqz v4, :cond_6c

    invoke-static {v1, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    const/4 v4, 0x0

    :cond_6c
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v8

    :goto_6f
    if-ltz v2, :cond_1be

    int-to-char v9, v2

    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v11

    if-eqz v11, :cond_7b

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_7b
    add-int/lit8 v2, v2, -0x1

    goto :goto_6f

    :pswitch_7e  #0x76
    const/16 v11, 0xb

    goto :goto_3a

    :pswitch_81  #0x75
    const/4 v2, 0x4

    :goto_82
    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_84
    if-ge v9, v2, :cond_a3

    if-ge v10, v3, :cond_a3

    iget-object v15, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v15, v15, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v16, v10, 0x1

    aget-char v10, v15, v10

    invoke-static {v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toASCIIHexDigit(I)I

    move-result v10

    if-gez v10, :cond_9b

    add-int/lit8 v9, v9, 0x1

    sub-int v10, v16, v9

    goto :goto_a4

    :cond_9b
    shl-int/lit8 v14, v14, 0x4

    or-int/2addr v14, v10

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v16

    goto :goto_84

    :cond_a3
    move v11, v14

    :goto_a4
    int-to-char v11, v11

    goto :goto_3a

    :pswitch_a6  #0x74
    const/16 v11, 0x9

    goto :goto_3a

    :pswitch_a9  #0x73
    if-eqz v4, :cond_af

    invoke-static {v1, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    const/4 v4, 0x0

    :cond_af
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v8

    :goto_b2
    if-ltz v2, :cond_1be

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_be

    int-to-char v9, v2

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_be
    add-int/lit8 v2, v2, -0x1

    goto :goto_b2

    :pswitch_c1  #0x72
    const/16 v11, 0xd

    goto/16 :goto_3a

    :pswitch_c5  #0x64
    if-eqz v4, :cond_cb

    invoke-static {v1, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    const/4 v4, 0x0

    :cond_cb
    const/16 v2, 0x39

    invoke-static {v1, v14, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    goto/16 :goto_1be

    :pswitch_d2  #0x63
    if-ge v10, v3, :cond_e9

    aget-char v2, v9, v10

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    move-result v2

    if-eqz v2, :cond_e9

    iget-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v9, v10, 0x1

    aget-char v2, v2, v10

    and-int/lit8 v2, v2, 0x1f

    int-to-char v11, v2

    move v2, v9

    goto :goto_122

    :cond_e9
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_3a

    :pswitch_ed  #0x62
    move v2, v10

    const/16 v11, 0x8

    goto :goto_122

    :pswitch_f1  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
    add-int/lit8 v2, v2, -0x30

    aget-char v11, v9, v10

    if-gt v14, v11, :cond_117

    const/16 v15, 0x37

    if-gt v11, v15, :cond_117

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v11, v11, -0x30

    add-int/2addr v2, v11

    aget-char v9, v9, v10

    if-gt v14, v9, :cond_117

    if-gt v9, v15, :cond_117

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v11, v2, 0x8

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v9, v11

    const/16 v11, 0xff

    if-gt v9, v11, :cond_115

    move v2, v9

    goto :goto_117

    :cond_115
    add-int/lit8 v10, v10, -0x1

    :cond_117
    :goto_117
    int-to-char v11, v2

    goto/16 :goto_3a

    :cond_11a
    const/16 v11, 0xa

    goto/16 :goto_3a

    :cond_11e
    const/16 v11, 0xc

    goto/16 :goto_3a

    :goto_122
    if-eqz v4, :cond_14f

    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr v4, v12

    if-eqz v4, :cond_149

    move v4, v6

    :cond_12c
    if-gt v4, v11, :cond_14c

    invoke-static {v1, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v9

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v10

    if-eq v4, v9, :cond_13e

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_13e
    if-eq v4, v10, :cond_143

    invoke-static {v1, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_143
    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    if-nez v4, :cond_12c

    goto :goto_14c

    :cond_149
    invoke-static {v1, v6, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    :cond_14c
    :goto_14c
    const/4 v4, 0x0

    goto/16 :goto_27

    :cond_14f
    iget-object v9, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v9, v9, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr v9, v12

    if-eqz v9, :cond_165

    invoke-static {v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v9

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    invoke-static {v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v9

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    goto :goto_168

    :cond_165
    invoke-static {v1, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :goto_168
    add-int/lit8 v9, v3, -0x1

    if-ge v2, v9, :cond_27

    iget-object v9, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v9, v9, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v9, v9, v2

    if-ne v9, v13, :cond_27

    add-int/lit8 v2, v2, 0x1

    move v6, v11

    const/4 v4, 0x1

    goto/16 :goto_27

    :cond_17a
    if-eqz v4, :cond_180

    invoke-static {v1, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    const/4 v4, 0x0

    :cond_180
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v8

    :goto_183
    if-ltz v2, :cond_1be

    int-to-char v9, v2

    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v11

    if-nez v11, :cond_18f

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_18f
    add-int/lit8 v2, v2, -0x1

    goto :goto_183

    :cond_192
    if-eqz v4, :cond_198

    invoke-static {v1, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    const/4 v4, 0x0

    :cond_198
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v2, v8

    :goto_19b
    if-ltz v2, :cond_1be

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v9

    if-nez v9, :cond_1a7

    int-to-char v9, v2

    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    :cond_1a7
    add-int/lit8 v2, v2, -0x1

    goto :goto_19b

    :cond_1aa
    if-eqz v4, :cond_1b0

    invoke-static {v1, v13}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    const/4 v4, 0x0

    :cond_1b0
    const/16 v2, 0x2f

    invoke-static {v1, v7, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    const/16 v2, 0x3a

    iget v9, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    sub-int/2addr v9, v8

    int-to-char v9, v9

    invoke-static {v1, v2, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    :cond_1be
    :goto_1be
    move v2, v10

    goto/16 :goto_27

    :cond_1c1
    return-void

    :pswitch_data_1c2
    .packed-switch 0x30
        :pswitch_f1  #00000030
        :pswitch_f1  #00000031
        :pswitch_f1  #00000032
        :pswitch_f1  #00000033
        :pswitch_f1  #00000034
        :pswitch_f1  #00000035
        :pswitch_f1  #00000036
        :pswitch_f1  #00000037
    .end packed-switch

    :pswitch_data_1d6
    .packed-switch 0x62
        :pswitch_ed  #00000062
        :pswitch_d2  #00000063
        :pswitch_c5  #00000064
    .end packed-switch

    :pswitch_data_1e0
    .packed-switch 0x72
        :pswitch_c1  #00000072
        :pswitch_a9  #00000073
        :pswitch_a6  #00000074
        :pswitch_81  #00000075
        :pswitch_7e  #00000076
        :pswitch_66  #00000077
        :pswitch_64  #00000078
    .end packed-switch
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V
    .registers 12

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    new-instance v8, Lorg/mozilla/javascript/regexp/REBackTrackData;

    iget v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iget v6, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    iget v7, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v8, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V
    .registers 14

    new-instance v7, Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V
    .registers 16

    new-instance v8, Lorg/mozilla/javascript/regexp/REProgState;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/regexp/REProgState;-><init>(Lorg/mozilla/javascript/regexp/REProgState;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    iput-object v8, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .registers 3

    instance-of v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return-object p0

    :cond_7
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static reopIsSimple(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/16 v1, 0x17

    if-gt p0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static reportError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntaxError"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private static resolveForwardJump([BII)V
    .registers 3

    if-gt p1, p2, :cond_7

    sub-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    return-void

    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private setLastIndex(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_9

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    return-void

    :cond_9
    const-string p1, "msg.modify.readonly"

    const-string v0, "lastIndex"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method private static simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_1ca

    :pswitch_7  #0x14, 0x15
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_c  #0x16, 0x17
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_1bf

    iget-object p5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object p5, p5, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object p2, p5, p2

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result p1

    if-eqz p1, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_2d  #0x13
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    int-to-char p2, p2

    add-int/lit8 p4, p4, 0x2

    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_1bf

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p2, p1, :cond_48

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p2

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p1

    if-ne p2, p1, :cond_1bf

    :cond_48
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_4f  #0x12
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    int-to-char p2, p2

    add-int/lit8 p4, p4, 0x2

    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-eq p3, p5, :cond_1bf

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_67  #0x11
    add-int/lit8 p2, p4, 0x1

    aget-byte p3, p3, p4

    and-int/lit16 p3, p3, 0xff

    int-to-char p3, p3

    if-eq v0, p5, :cond_b0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p3, p1, :cond_80

    invoke-static {p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p3

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result p1

    if-ne p3, p1, :cond_b0

    :cond_80
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 v1, 0x1

    goto :goto_b0

    :pswitch_87  #0x10
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p3

    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, p2, p3, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_1bf

    :pswitch_99  #0xf
    add-int/lit8 p2, p4, 0x1

    aget-byte p3, p3, p4

    and-int/lit16 p3, p3, 0xff

    int-to-char p3, p3

    if-eq v0, p5, :cond_b0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p3, :cond_b0

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move p4, p2

    goto/16 :goto_1be

    :cond_b0
    :goto_b0
    move p4, p2

    goto/16 :goto_1bf

    :pswitch_b3  #0xe
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p3

    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, p2, p3, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_1bf

    :pswitch_c5  #0xd
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p2

    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, p2, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z

    move-result v1

    goto/16 :goto_1bf

    :pswitch_d1  #0xc
    if-eq v0, p5, :cond_1bf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result p1

    if-nez p1, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_e4  #0xb
    if-eq v0, p5, :cond_1bf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result p1

    if-eqz p1, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_f7  #0xa
    if-eq v0, p5, :cond_1bf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-nez p1, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_10a  #0x9
    if-eq v0, p5, :cond_1bf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-eqz p1, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_11d  #0x8
    if-eq v0, p5, :cond_1bf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_130  #0x7
    if-eq v0, p5, :cond_1bf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_143  #0x6
    if-eq v0, p5, :cond_1bf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_1bf

    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    goto/16 :goto_1be

    :pswitch_156  #0x5
    if-eqz v0, :cond_167

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p2

    if-nez p2, :cond_165

    goto :goto_167

    :cond_165
    const/4 p2, 0x0

    goto :goto_168

    :cond_167
    :goto_167
    const/4 p2, 0x1

    :goto_168
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ge p3, p5, :cond_198

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-eqz p1, :cond_198

    goto :goto_197

    :pswitch_177  #0x4
    if-eqz v0, :cond_188

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p2

    if-nez p2, :cond_186

    goto :goto_188

    :cond_186
    const/4 p2, 0x0

    goto :goto_189

    :cond_188
    :goto_188
    const/4 p2, 0x1

    :goto_189
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    if-ge p3, p5, :cond_197

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result p1

    if-nez p1, :cond_198

    :cond_197
    :goto_197
    const/4 v1, 0x1

    :cond_198
    xor-int/2addr v1, p2

    goto :goto_1bf

    :pswitch_19a  #0x3
    if-eq v0, p5, :cond_1be

    iget-boolean p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-eqz p2, :cond_1bf

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_1be

    goto :goto_1bf

    :pswitch_1ab  #0x2
    if-eqz v0, :cond_1be

    iget-boolean p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    if-eqz p2, :cond_1bf

    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result p1

    if-nez p1, :cond_1be

    goto :goto_1bf

    :cond_1be
    :goto_1be
    :pswitch_1be  #0x1
    const/4 v1, 0x1

    :cond_1bf
    :goto_1bf
    if-eqz v1, :cond_1c6

    if-nez p6, :cond_1c5

    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :cond_1c5
    return p4

    :cond_1c6
    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    const/4 p0, -0x1

    return p0

    :pswitch_data_1ca
    .packed-switch 0x1
        :pswitch_1be  #00000001
        :pswitch_1ab  #00000002
        :pswitch_19a  #00000003
        :pswitch_177  #00000004
        :pswitch_156  #00000005
        :pswitch_143  #00000006
        :pswitch_130  #00000007
        :pswitch_11d  #00000008
        :pswitch_10a  #00000009
        :pswitch_f7  #0000000a
        :pswitch_e4  #0000000b
        :pswitch_d1  #0000000c
        :pswitch_c5  #0000000d
        :pswitch_b3  #0000000e
        :pswitch_99  #0000000f
        :pswitch_87  #00000010
        :pswitch_67  #00000011
        :pswitch_4f  #00000012
        :pswitch_2d  #00000013
        :pswitch_7  #00000014
        :pswitch_7  #00000015
        :pswitch_c  #00000016
        :pswitch_c  #00000017
    .end packed-switch
.end method

.method private static toASCIIHexDigit(I)I
    .registers 4

    const/4 v0, -0x1

    const/16 v1, 0x30

    if-ge p0, v1, :cond_6

    return v0

    :cond_6
    const/16 v2, 0x39

    if-gt p0, v2, :cond_c

    sub-int/2addr p0, v1

    return p0

    :cond_c
    or-int/lit8 p0, p0, 0x20

    const/16 v1, 0x61

    if-gt v1, p0, :cond_1a

    const/16 v2, 0x66

    if-gt p0, v2, :cond_1a

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1a
    return v0
.end method

.method private static upcase(C)C
    .registers 3

    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    const/16 v0, 0x61

    if-gt v0, p0, :cond_f

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_f

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    :cond_f
    return p0

    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-ge v1, v0, :cond_17

    goto :goto_18

    :cond_17
    move p0, v1

    :goto_18
    return p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_e

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p4, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 8

    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_2a

    aget-object p2, p3, v1

    instance-of p2, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz p2, :cond_2a

    array-length p1, p3

    if-le p1, v0, :cond_1c

    aget-object p1, p3, v0

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, p2, :cond_15

    goto :goto_1c

    :cond_15
    const-string p1, "msg.bad.regexp.compile"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1c
    :goto_1c
    aget-object p1, p3, v1

    check-cast p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    iget-object p2, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object p1, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    return-object p0

    :cond_2a
    array-length p2, p3

    if-eqz p2, :cond_3b

    aget-object p2, p3, v1

    instance-of p2, p2, Lorg/mozilla/javascript/Undefined;

    if-eqz p2, :cond_34

    goto :goto_3b

    :cond_34
    aget-object p2, p3, v1

    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3d

    :cond_3b
    :goto_3b
    const-string p2, ""

    :goto_3d
    array-length v2, p3

    if-le v2, v0, :cond_4d

    aget-object v2, p3, v0

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v2, v3, :cond_4d

    aget-object p3, p3, v0

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4e

    :cond_4d
    const/4 p3, 0x0

    :goto_4e
    invoke-static {p1, p2, p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Double;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    return-object p0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 6

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :cond_10
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_74

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1f  #0x8
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-direct {p1, p2, p3, p5, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    const-string p2, "index"

    invoke-interface {p1, p2, p1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_30  #0x7
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-direct {p1, p2, p3, p5, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_39  #0x6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p5, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_43  #0x5
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p5, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_57

    :cond_55
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_57
    return-object p2

    :pswitch_58  #0x4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-direct {p1, p2, p3, p5, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_61  #0x2, 0x3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6a  #0x1
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6a  #00000001
        :pswitch_61  #00000002
        :pswitch_61  #00000003
        :pswitch_58  #00000004
        :pswitch_43  #00000005
        :pswitch_39  #00000006
        :pswitch_30  #00000007
        :pswitch_1f  #00000008
    .end packed-switch
.end method

.method executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    new-instance v10, Lorg/mozilla/javascript/regexp/REGlobalData;

    invoke-direct {v10}, Lorg/mozilla/javascript/regexp/REGlobalData;-><init>()V

    const/4 v11, 0x0

    aget v2, p5, v11

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v12

    if-le v2, v12, :cond_18

    move v13, v12

    goto :goto_19

    :cond_18
    move v13, v2

    :goto_19
    iget-object v3, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-boolean v7, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    move-object v2, v10

    move-object/from16 v4, p4

    move v5, v13

    move v6, v12

    invoke-static/range {v2 .. v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->matchRegExp(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_30

    const/4 v1, 0x2

    if-eq v9, v1, :cond_2d

    return-object v3

    :cond_2d
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v1

    :cond_30
    iget v2, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    aput v2, p5, v11

    iget v4, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v4, v13

    sub-int v4, v2, v4

    sub-int v5, v2, v4

    if-nez v9, :cond_44

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v14, v3

    move-object v7, v6

    move-object/from16 v6, p1

    goto :goto_56

    :cond_44
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v6, v7, v11}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    add-int v14, v5, v4

    invoke-virtual {v8, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v11, v7, v14}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object v14, v7

    :goto_56
    iget-object v15, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v15, v15, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-nez v15, :cond_66

    iput-object v3, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    new-instance v3, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v3}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v3, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_a1

    :cond_66
    new-array v15, v15, [Lorg/mozilla/javascript/regexp/SubString;

    iput-object v15, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    const/4 v15, 0x0

    :goto_6b
    iget-object v11, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v11, v11, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v15, v11, :cond_9f

    invoke-virtual {v10, v15}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    move-result v11

    const/4 v0, -0x1

    if-eq v11, v0, :cond_91

    invoke-virtual {v10, v15}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    move-result v0

    new-instance v3, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v3, v8, v11, v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    aput-object v3, v0, v15

    if-eqz v9, :cond_9a

    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v3}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v14, v0, v14, v11}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_9a

    :cond_91
    if-eqz v9, :cond_9a

    add-int/lit8 v0, v15, 0x1

    sget-object v11, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-interface {v14, v0, v14, v11}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_9a
    :goto_9a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_6b

    :cond_9f
    iput-object v3, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    :goto_a1
    if-eqz v9, :cond_b4

    iget v0, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "index"

    invoke-interface {v14, v3, v14, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v0, "input"

    invoke-interface {v14, v0, v14, v8}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_b4
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    if-nez v0, :cond_cd

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    :cond_cd
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v8, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iput v5, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iput v4, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v8, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v3, 0x78

    if-ne v0, v3, :cond_ea

    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iput v13, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v3, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    iput v3, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    goto :goto_f4

    :cond_ea
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    const/4 v3, 0x0

    iput v3, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v3, v10, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v13, v3

    iput v13, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    :goto_f4
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    iput-object v8, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    iput v2, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    sub-int/2addr v12, v2

    iput v12, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    return-object v7
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_22

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x67

    if-ne v0, v7, :cond_19

    const-string v0, "global"

    const/4 v7, 0x3

    goto :goto_44

    :cond_19
    const/16 v7, 0x73

    if-ne v0, v7, :cond_42

    const-string/jumbo v0, "source"

    const/4 v7, 0x2

    goto :goto_44

    :cond_22
    const/16 v7, 0x9

    if-ne v0, v7, :cond_3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x6c

    if-ne v0, v7, :cond_32

    const-string v0, "lastIndex"

    const/4 v7, 0x1

    goto :goto_44

    :cond_32
    const/16 v7, 0x6d

    if-ne v0, v7, :cond_42

    const-string v0, "multiline"

    const/4 v7, 0x5

    goto :goto_44

    :cond_3a
    const/16 v7, 0xa

    if-ne v0, v7, :cond_42

    const-string v0, "ignoreCase"

    const/4 v7, 0x4

    goto :goto_44

    :cond_42
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_44
    if-eqz v0, :cond_4f

    if-eq v0, p1, :cond_4f

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_50

    :cond_4f
    move v6, v7

    :goto_50
    if-nez v6, :cond_57

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_57
    if-eq v6, v3, :cond_6a

    if-eq v6, v2, :cond_68

    if-eq v6, v5, :cond_68

    if-eq v6, v4, :cond_68

    if-ne v6, v1, :cond_62

    goto :goto_68

    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_68
    :goto_68
    const/4 p1, 0x7

    goto :goto_6c

    :cond_6a
    iget p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    :goto_6c
    invoke-static {p1, v6}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x74

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_31

    if-eq v0, v3, :cond_2d

    const/4 v3, 0x7

    if-eq v0, v3, :cond_29

    const/16 v3, 0x8

    if-eq v0, v3, :cond_16

    goto :goto_44

    :cond_16
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_22

    const-string/jumbo v0, "toSource"

    goto :goto_46

    :cond_22
    if-ne v0, v1, :cond_44

    const/4 v2, 0x2

    const-string/jumbo v0, "toString"

    goto :goto_46

    :cond_29
    const/4 v2, 0x1

    const-string v0, "compile"

    goto :goto_46

    :cond_2d
    const-string v0, "prefix"

    const/4 v2, 0x6

    goto :goto_46

    :cond_31
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_3d

    const-string v0, "exec"

    const/4 v2, 0x4

    goto :goto_46

    :cond_3d
    if-ne v0, v1, :cond_44

    const/4 v2, 0x5

    const-string/jumbo v0, "test"

    goto :goto_46

    :cond_44
    :goto_44
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_46
    if-eqz v0, :cond_51

    if-eq v0, p1, :cond_51

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_52

    :cond_51
    move v5, v2

    :goto_52
    return v5
.end method

.method protected findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x7

    return p1

    :cond_a
    sget-object v0, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/16 p1, 0x8

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "RegExp"

    return-object v0
.end method

.method getFlags()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    return v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_17

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    const-string p1, "multiline"

    return-object p1

    :cond_17
    const-string p1, "ignoreCase"

    return-object p1

    :cond_1a
    const-string p1, "global"

    return-object p1

    :cond_1d
    const-string/jumbo p1, "source"

    return-object p1

    :cond_21
    const-string p1, "lastIndex"

    return-object p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_49

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3f

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_31

    const/4 v2, 0x4

    if-eq p1, v2, :cond_23

    const/4 v1, 0x5

    if-eq p1, v1, :cond_15

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_23
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_31
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget p1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3f
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_49
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    return-object p1
.end method

.method protected getMaxInstanceId()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .registers 2

    const-string v0, "object"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 9

    const/4 v0, 0x7

    if-ne p1, v0, :cond_10

    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    const/4 v6, 0x1

    const-string v5, "[Symbol.match]"

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_10
    const/16 v0, 0x8

    if-ne p1, v0, :cond_21

    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    const/4 v6, 0x1

    const-string v5, "[Symbol.search]"

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :cond_21
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_50

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30  #0x6
    const-string v0, "prefix"

    goto :goto_49

    :pswitch_33  #0x5
    const-string/jumbo v0, "test"

    goto :goto_49

    :pswitch_37  #0x4
    const-string v0, "exec"

    goto :goto_49

    :pswitch_3a  #0x3
    const-string/jumbo v1, "toSource"

    goto :goto_41

    :pswitch_3e  #0x2
    const-string/jumbo v1, "toString"

    :goto_41
    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_49

    :pswitch_44  #0x1
    const/4 v0, 0x2

    const-string v1, "compile"

    move-object v0, v1

    const/4 v1, 0x2

    :goto_49
    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_44  #00000001
        :pswitch_3e  #00000002
        :pswitch_3a  #00000003
        :pswitch_37  #00000004
        :pswitch_33  #00000005
        :pswitch_30  #00000006
    .end packed-switch
.end method

.method protected setInstanceIdAttributes(II)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdAttributes(II)V

    return-void

    :cond_7
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    return-void
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    const/4 v0, 0x5

    if-eq p1, v0, :cond_12

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    :cond_12
    return-void

    :cond_13
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    array-length v3, v2

    if-eqz v3, :cond_15

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_15
    const-string v2, "(?:)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2a
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_37

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_37
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_44

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
