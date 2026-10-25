.class Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;
.super Ljava/lang/Object;
.source "EcmaScriptTokenStream.java"


# static fields
.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1

.field private static final NUMERIC_SEPARATOR:C = '_'

.field private static final REPORT_NUMBER_FORMAT_ERROR:I = -0x2


# instance fields
.field private cursor:I

.field private dirtyLine:Z

.field private lineEndChar:I

.field lineno:I

.field private sourceCursor:I

.field private final sourceString:Ljava/lang/String;

.field private final strictMode:Z

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    iput-boolean p3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->strictMode:Z

    return-void
.end method

.method private addToString(I)V
    .registers 6

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_16

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    :cond_16
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    return-void
.end method

.method private getChar()I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getChar(Z)I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getChar(ZZ)I
    .registers 8

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    aget v0, v0, v1

    return v0

    :cond_15
    :goto_15
    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_21

    return v2

    :cond_21
    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceString:Ljava/lang/String;

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    const/16 v3, 0xa

    if-nez p2, :cond_4e

    iget v4, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    if-ltz v4, :cond_4e

    iget v4, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    if-ne v4, v1, :cond_46

    if-ne v0, v3, :cond_46

    iput v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    goto :goto_15

    :cond_46
    iput v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    iget v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    :cond_4e
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_5b

    if-eq v0, v3, :cond_56

    if-ne v0, v1, :cond_74

    :cond_56
    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    const/16 v0, 0xa

    goto :goto_74

    :cond_5b
    const v1, 0xfeff

    if-ne v0, v1, :cond_61

    return v0

    :cond_61
    if-eqz p1, :cond_6a

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isJSFormatChar(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    goto :goto_15

    :cond_6a
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_74

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    const/16 v0, 0xa

    :cond_74
    :goto_74
    return v0
.end method

.method private getCharIgnoreLineEnd()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getCharIgnoreLineEnd(Z)I
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static isAlpha(I)Z
    .registers 4

    const/16 v0, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p0, v0, :cond_d

    const/16 v0, 0x41

    if-gt v0, p0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    :cond_d
    const/16 v0, 0x61

    if-gt v0, p0, :cond_16

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method

.method private static isDigit(I)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isDigit(II)Z
    .registers 3

    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_a
    const/16 v0, 0x10

    if-ne p0, v0, :cond_14

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isHexDigit(I)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_14
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1e

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isOctalDigit(I)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1e
    const/4 v0, 0x2

    if-ne p0, v0, :cond_29

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDualDigit(I)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method private static isDualDigit(I)Z
    .registers 2

    const/16 v0, 0x30

    if-eq v0, p0, :cond_b

    const/16 v0, 0x31

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isHexDigit(I)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_10

    const/16 v0, 0x66

    if-le p0, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private static isJSFormatChar(I)Z
    .registers 3

    const/16 v0, 0x7f

    if-le p0, v0, :cond_f

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isJSSpace(I)Z
    .registers 5

    const/16 v0, 0x7f

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-gt p0, v0, :cond_18

    const/16 v0, 0x20

    if-eq p0, v0, :cond_16

    const/16 v0, 0x9

    if-eq p0, v0, :cond_16

    if-eq p0, v2, :cond_16

    const/16 v0, 0xb

    if-ne p0, v0, :cond_17

    :cond_16
    move v1, v3

    :cond_17
    return v1

    :cond_18
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_28

    const v0, 0xfeff

    if-eq p0, v0, :cond_28

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    if-ne v0, v2, :cond_29

    :cond_28
    move v1, v3

    :cond_29
    return v1
.end method

.method private static isOctalDigit(I)Z
    .registers 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x37

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private matchChar(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    if-ne v0, p1, :cond_c

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    const/4 v1, 0x1

    return v1

    :cond_c
    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    const/4 v1, 0x0

    return v1
.end method

.method private peekChar()I
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    return v0
.end method

.method private readDigits(II)I
    .registers 7

    invoke-static {p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    return v1

    :cond_11
    :goto_11
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_30

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2e

    if-ne v0, v1, :cond_20

    goto :goto_2e

    :cond_20
    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    return v2

    :cond_2a
    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_11

    :cond_2e
    :goto_2e
    const/4 v1, -0x2

    return v1

    :cond_30
    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v0

    if-ne v0, v1, :cond_11

    return v1

    :cond_40
    return v0

    :cond_41
    return p2
.end method

.method private skipLine()V
    .registers 4

    nop

    :goto_1
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v0

    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    const/16 v0, 0xa

    if-eq v1, v0, :cond_e

    goto :goto_1

    :cond_e
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    return-void
.end method

.method private stringToKeyword(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;
    .registers 3

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->strictMode:Z

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringToKeywordForES(Ljava/lang/String;Z)Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    move-result-object v0

    return-object v0
.end method

.method private static stringToKeywordForES(Ljava/lang/String;Z)Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_296

    :cond_7
    goto/16 :goto_220

    :sswitch_9
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_221

    :sswitch_14
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto/16 :goto_221

    :sswitch_20
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x11

    goto/16 :goto_221

    :sswitch_2c
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_221

    :sswitch_37
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x28

    goto/16 :goto_221

    :sswitch_43
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1d

    goto/16 :goto_221

    :sswitch_4f
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1b

    goto/16 :goto_221

    :sswitch_5b
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    goto/16 :goto_221

    :sswitch_67
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x24

    goto/16 :goto_221

    :sswitch_73
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1e

    goto/16 :goto_221

    :sswitch_7f
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto/16 :goto_221

    :sswitch_8a
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x22

    goto/16 :goto_221

    :sswitch_96
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_221

    :sswitch_a1
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_221

    :sswitch_ac
    const-string v0, "await"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x25

    goto/16 :goto_221

    :sswitch_b8
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1c

    goto/16 :goto_221

    :sswitch_c4
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1a

    goto/16 :goto_221

    :sswitch_d0
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x20

    goto/16 :goto_221

    :sswitch_dc
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x15

    goto/16 :goto_221

    :sswitch_e8
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1f

    goto/16 :goto_221

    :sswitch_f4
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x26

    goto/16 :goto_221

    :sswitch_100
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_221

    :sswitch_10c
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_221

    :sswitch_117
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x19

    goto/16 :goto_221

    :sswitch_123
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x17

    goto/16 :goto_221

    :sswitch_12f
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x12

    goto/16 :goto_221

    :sswitch_13b
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x21

    goto/16 :goto_221

    :sswitch_147
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto/16 :goto_221

    :sswitch_153
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    goto/16 :goto_221

    :sswitch_15f
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_221

    :sswitch_16b
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto/16 :goto_221

    :sswitch_177
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2a

    goto/16 :goto_221

    :sswitch_183
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto/16 :goto_221

    :sswitch_18e
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2b

    goto/16 :goto_221

    :sswitch_19a
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x29

    goto/16 :goto_221

    :sswitch_1a6
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto/16 :goto_221

    :sswitch_1b2
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x18

    goto/16 :goto_221

    :sswitch_1be
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    goto :goto_221

    :sswitch_1c9
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2d

    goto :goto_221

    :sswitch_1d4
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x27

    goto :goto_221

    :sswitch_1df
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    goto :goto_221

    :sswitch_1ea
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2c

    goto :goto_221

    :sswitch_1f5
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_221

    :sswitch_200
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_221

    :sswitch_20b
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x23

    goto :goto_221

    :sswitch_216
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_221

    :goto_220
    const/4 v0, -0x1

    :goto_221
    packed-switch v0, :pswitch_data_350

    goto :goto_293

    :pswitch_225  #0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d
    if-eqz p1, :cond_293

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RESERVED:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_22a  #0x22, 0x23, 0x24, 0x25, 0x26
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RESERVED:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_22d  #0x21
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LET:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_230  #0x20
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->TRUE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_233  #0x1f
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->NULL:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_236  #0x1e
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->FALSE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_239  #0x1d
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->YIELD:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_23c  #0x1c
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->WITH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_23f  #0x1b
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->WHILE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_242  #0x1a
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->VOID:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_245  #0x19
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->VAR:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_248  #0x18
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->TYPEOF:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_24b  #0x17
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->TRY:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_24e  #0x16
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->THROW:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_251  #0x15
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->THIS:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_254  #0x14
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->SWITCH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_257  #0x13
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RETURN:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_25a  #0x12
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->NEW:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_25d  #0x11
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->INSTANCEOF:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_260  #0x10
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->IN:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_263  #0xf
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->IMPORT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_266  #0xe
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->IF:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_269  #0xd
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->FUNCTION:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_26c  #0xc
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->FOR:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_26f  #0xb
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->FINALLY:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_272  #0xa
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EXPORT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_275  #0x9
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ELSE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_278  #0x8
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DO:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_27b  #0x7
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DELPROP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_27e  #0x6
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DEFAULT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_281  #0x5
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DEBUGGER:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_284  #0x4
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->CONTINUE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_287  #0x3
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->CONST:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_28a  #0x2
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->CATCH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_28d  #0x1
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->CASE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_290  #0x0
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->BREAK:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_293
    :goto_293
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EOF:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v0

    :sswitch_data_296
    .sparse-switch
        -0x4f997a55 -> :sswitch_216
        -0x4dd2db67 -> :sswitch_20b
        -0x4cd6ec4c -> :sswitch_200
        -0x469e8c5b -> :sswitch_1f5
        -0x3a424d97 -> :sswitch_1ea
        -0x37b1c2d0 -> :sswitch_1df
        -0x368fa850 -> :sswitch_1d4
        -0x35323192 -> :sswitch_1c9
        -0x350448cc -> :sswitch_1be
        -0x3330496f -> :sswitch_1b2
        -0x32dbb67d -> :sswitch_1a6
        -0x301acbba -> :sswitch_19a
        -0x24459452 -> :sswitch_18e
        -0x21ced359 -> :sswitch_183
        -0x12beda7d -> :sswitch_177
        0xc8b -> :sswitch_16b
        0xd1d -> :sswitch_15f
        0xd25 -> :sswitch_153
        0x18cc9 -> :sswitch_147
        0x1a21b -> :sswitch_13b
        0x1a9a0 -> :sswitch_12f
        0x1c1bb -> :sswitch_123
        0x1c727 -> :sswitch_117
        0x2e7b30 -> :sswitch_10c
        0x2f8d39 -> :sswitch_100
        0x2f9501 -> :sswitch_f4
        0x33c587 -> :sswitch_e8
        0x364e9e -> :sswitch_dc
        0x36758e -> :sswitch_d0
        0x375194 -> :sswitch_c4
        0x37b0c6 -> :sswitch_b8
        0x58e7956 -> :sswitch_ac
        0x59a58ff -> :sswitch_a1
        0x5a0eebb -> :sswitch_96
        0x5a5a978 -> :sswitch_8a
        0x5a73763 -> :sswitch_7f
        0x5cb1923 -> :sswitch_73
        0x68b6f7b -> :sswitch_67
        0x693a6e6 -> :sswitch_5b
        0x6bdcb31 -> :sswitch_4f
        0x6da5f8d -> :sswitch_43
        0x1df56d39 -> :sswitch_37
        0x20a6f421 -> :sswitch_2c
        0x35c3d12c -> :sswitch_20
        0x524f73d8 -> :sswitch_14
        0x5c13d641 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_350
    .packed-switch 0x0
        :pswitch_290  #00000000
        :pswitch_28d  #00000001
        :pswitch_28a  #00000002
        :pswitch_287  #00000003
        :pswitch_284  #00000004
        :pswitch_281  #00000005
        :pswitch_27e  #00000006
        :pswitch_27b  #00000007
        :pswitch_278  #00000008
        :pswitch_275  #00000009
        :pswitch_272  #0000000a
        :pswitch_26f  #0000000b
        :pswitch_26c  #0000000c
        :pswitch_269  #0000000d
        :pswitch_266  #0000000e
        :pswitch_263  #0000000f
        :pswitch_260  #00000010
        :pswitch_25d  #00000011
        :pswitch_25a  #00000012
        :pswitch_257  #00000013
        :pswitch_254  #00000014
        :pswitch_251  #00000015
        :pswitch_24e  #00000016
        :pswitch_24b  #00000017
        :pswitch_248  #00000018
        :pswitch_245  #00000019
        :pswitch_242  #0000001a
        :pswitch_23f  #0000001b
        :pswitch_23c  #0000001c
        :pswitch_239  #0000001d
        :pswitch_236  #0000001e
        :pswitch_233  #0000001f
        :pswitch_230  #00000020
        :pswitch_22d  #00000021
        :pswitch_22a  #00000022
        :pswitch_22a  #00000023
        :pswitch_22a  #00000024
        :pswitch_22a  #00000025
        :pswitch_22a  #00000026
        :pswitch_225  #00000027
        :pswitch_225  #00000028
        :pswitch_225  #00000029
        :pswitch_225  #0000002a
        :pswitch_225  #0000002b
        :pswitch_225  #0000002c
        :pswitch_225  #0000002d
    .end packed-switch
.end method

.method private ungetChar(I)V
    .registers 5

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_13
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    aput p1, v0, v1

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    aput p1, v0, v1

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    return-void
.end method


# virtual methods
.method final getToken()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;
    .registers 19

    move-object/from16 v0, p0

    :cond_2
    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_16

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EOF:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_16
    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v1, v4, :cond_29

    iput-boolean v5, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EOL:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_29
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isJSSpace(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_35

    iput-boolean v3, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    :cond_35
    iget v7, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    sub-int/2addr v7, v3

    iput v7, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    iget v7, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v7, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    const/4 v7, 0x0

    const/16 v8, 0x75

    const/16 v9, 0x5c

    if-ne v1, v9, :cond_57

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-ne v1, v8, :cond_50

    const/4 v10, 0x1

    const/4 v7, 0x1

    iput v5, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    goto :goto_63

    :cond_50
    const/4 v10, 0x0

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    const/16 v1, 0x5c

    goto :goto_63

    :cond_57
    int-to-char v10, v1

    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v10

    if-eqz v10, :cond_63

    iput v5, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    :cond_63
    :goto_63
    const-string v11, "illegal character: \'%c\'"

    const/4 v12, 0x4

    if-eqz v10, :cond_d5

    move v3, v7

    :goto_69
    if-eqz v7, :cond_8c

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6d
    if-eq v5, v12, :cond_7d

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    invoke-static {v1, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v4

    if-gez v4, :cond_7a

    goto :goto_7d

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    :cond_7d
    :goto_7d
    if-ltz v4, :cond_84

    invoke-direct {v0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    const/4 v7, 0x0

    goto :goto_69

    :cond_84
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v5, "invalid unicode escape"

    invoke-direct {v2, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8c
    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-ne v1, v9, :cond_ad

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-ne v1, v8, :cond_9b

    const/4 v7, 0x1

    const/4 v3, 0x1

    goto :goto_69

    :cond_9b
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ad
    if-eq v1, v2, :cond_c0

    const v4, 0xfeff

    if-eq v1, v4, :cond_c0

    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_bc

    goto :goto_c0

    :cond_bc
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_69

    :cond_c0
    :goto_c0
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_d2

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringToKeyword(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    move-result-object v4

    sget-object v5, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EOF:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq v4, v5, :cond_d2

    return-object v4

    :cond_d2
    sget-object v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->NAME:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v4

    :cond_d5
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v13

    const/16 v15, 0x78

    const/16 v16, 0x2

    const/16 v14, 0x2e

    move/from16 v17, v12

    const/16 v12, 0x30

    if-nez v13, :cond_3e0

    if-ne v1, v14, :cond_f3

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->peekChar()I

    move-result v13

    invoke-static {v13}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v13

    if-eqz v13, :cond_f3

    goto/16 :goto_3e0

    :cond_f3
    const/16 v13, 0x22

    const/16 v14, 0x60

    if-eq v1, v13, :cond_2e8

    const/16 v13, 0x27

    if-eq v1, v13, :cond_2e8

    if-ne v1, v14, :cond_101

    goto/16 :goto_2e8

    :cond_101
    const/16 v4, 0x3e

    const/16 v5, 0x2a

    const/16 v8, 0x3d

    sparse-switch v1, :sswitch_data_4e2

    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_11c
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->BITNOT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_11f
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RC:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_122
    const/16 v2, 0x7c

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_12d

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->OR:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_12d
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_136

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_BITOR:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_136
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->BITOR:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_139
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LC:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_13c
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_145

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_BITXOR:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_145
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->BITXOR:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_148
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RB:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_14b
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LB:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_14e
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->HOOK:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_151
    invoke-direct {v0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_175

    invoke-direct {v0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_169

    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_166

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_URSH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_166
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->URSH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_169
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_172

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_RSH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_172
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RSH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_175
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_17e

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->GE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_17e
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->GT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_181
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_193

    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_190

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->SHEQ:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_190
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EQ:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_193
    invoke-direct {v0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_19c

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ARROW:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_19c
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_19f
    const/16 v2, 0x21

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1c7

    invoke-direct {v0, v6}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1c2

    invoke-direct {v0, v6}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1bf

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v2, v2, -0x4

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->COMMENT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_1bf
    invoke-direct {v0, v6}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_1c2
    const/16 v2, 0x21

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_1c7
    const/16 v2, 0x3c

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1db

    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1d8

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_LSH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_1d8
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LSH:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_1db
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1e4

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_1e4
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_1e7
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->SEMI:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_1ea
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->COLON:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_1ed
    const/16 v4, 0x2f

    invoke-direct {v0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v6

    if-eqz v6, :cond_201

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->COMMENT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_201
    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v6

    if-eqz v6, :cond_23d

    const/4 v6, 0x0

    iget v8, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v8, v8, -0x2

    iput v8, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v8

    if-eqz v8, :cond_215

    const/4 v6, 0x1

    :cond_215
    :goto_215
    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-eq v1, v2, :cond_230

    if-ne v1, v5, :cond_21f

    const/4 v6, 0x1

    goto :goto_215

    :cond_21f
    if-ne v1, v4, :cond_22a

    if-eqz v6, :cond_215

    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->COMMENT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_22a
    const/4 v6, 0x0

    iget v8, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v8, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    goto :goto_215

    :cond_230
    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "unterminated comment"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23d
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_246

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_246
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DIV:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_249
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DOT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_24c
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->SUB:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v5

    if-eqz v5, :cond_257

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_SUB:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    goto :goto_26f

    :cond_257
    invoke-direct {v0, v6}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v5

    if-eqz v5, :cond_26f

    iget-boolean v5, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    if-nez v5, :cond_26d

    invoke-direct {v0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v4

    if-eqz v4, :cond_26d

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    sget-object v3, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->COMMENT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v3

    :cond_26d
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DEC:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    :cond_26f
    :goto_26f
    iput-boolean v3, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    return-object v2

    :sswitch_272
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->COMMA:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_275
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_27e

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_ADD:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_27e
    const/16 v2, 0x2b

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_289

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->INC:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_289
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ADD:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_28c
    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_29e

    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_29b

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_EXP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_29b
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EXP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_29e
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2a7

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_MUL:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_2a7
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->MUL:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_2aa
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->RP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_2ad
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->LP:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_2b0
    const/16 v2, 0x26

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2bb

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->AND:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_2bb
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2c4

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_BITAND:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_2c4
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->BITAND:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_2c7
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2d0

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_MOD:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_2d0
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->MOD:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :sswitch_2d3
    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2e5

    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2e2

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->SHNE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_2e2
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->NE:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_2e5
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->NOT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v2

    :cond_2e8
    :goto_2e8
    move v3, v1

    iput v5, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getCharIgnoreLineEnd(Z)I

    move-result v1

    :goto_2ef
    if-eq v1, v3, :cond_3d4

    const/4 v6, 0x0

    if-ne v1, v2, :cond_2f6

    const/4 v6, 0x1

    goto :goto_303

    :cond_2f6
    if-ne v1, v4, :cond_303

    iget v11, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    sparse-switch v11, :sswitch_data_544

    goto :goto_303

    :sswitch_2fe
    iget v1, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    goto :goto_303

    :sswitch_301
    const/4 v6, 0x1

    nop

    :cond_303
    :goto_303
    if-nez v6, :cond_3cc

    if-ne v1, v9, :cond_3bc

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    sparse-switch v1, :sswitch_data_556

    move/from16 v8, v17

    if-gt v12, v1, :cond_3be

    const/16 v2, 0x38

    if-ge v1, v2, :cond_3be

    add-int/lit8 v11, v1, -0x30

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-gt v12, v1, :cond_3b7

    if-ge v1, v2, :cond_3b7

    mul-int/lit8 v13, v11, 0x8

    add-int/2addr v13, v1

    add-int/lit8 v11, v13, -0x30

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-gt v12, v1, :cond_3b7

    if-ge v1, v2, :cond_3b7

    const/16 v2, 0x1f

    if-gt v11, v2, :cond_3b7

    mul-int/lit8 v2, v11, 0x8

    add-int/2addr v2, v1

    add-int/lit8 v11, v2, -0x30

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    goto/16 :goto_3b7

    :sswitch_33c
    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    invoke-static {v1, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v11

    if-gez v11, :cond_34a

    invoke-direct {v0, v15}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_2ef

    :cond_34a
    move v13, v1

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    invoke-static {v1, v11}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v11

    if-gez v11, :cond_35c

    invoke-direct {v0, v15}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {v0, v13}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_2ef

    :cond_35c
    move v1, v11

    move/from16 v8, v17

    goto/16 :goto_3be

    :sswitch_361
    const/16 v1, 0xb

    move/from16 v8, v17

    goto :goto_3be

    :sswitch_366
    iget v11, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    invoke-direct {v0, v8}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_370
    move/from16 v8, v17

    if-eq v2, v8, :cond_38f

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    invoke-static {v1, v13}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v13

    if-gez v13, :cond_385

    move/from16 v17, v8

    const/4 v2, -0x1

    const/16 v8, 0x75

    goto/16 :goto_2ef

    :cond_385
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v17, v8

    const/16 v8, 0x75

    goto :goto_370

    :cond_38f
    iput v11, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    move v1, v13

    goto :goto_3be

    :sswitch_393
    move/from16 v8, v17

    const/16 v1, 0x9

    goto :goto_3be

    :sswitch_398
    move/from16 v8, v17

    const/16 v1, 0xd

    goto :goto_3be

    :sswitch_39d
    move/from16 v8, v17

    const/16 v1, 0xa

    goto :goto_3be

    :sswitch_3a2
    move/from16 v8, v17

    const/16 v1, 0xc

    goto :goto_3be

    :sswitch_3a7
    move/from16 v8, v17

    const/16 v1, 0x8

    goto :goto_3be

    :sswitch_3ac
    move/from16 v8, v17

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    const/4 v2, -0x1

    const/16 v8, 0x75

    goto/16 :goto_2ef

    :cond_3b7
    :goto_3b7
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    move v1, v11

    goto :goto_3be

    :cond_3bc
    move/from16 v8, v17

    :cond_3be
    :goto_3be
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {v0, v5}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(Z)I

    move-result v1

    move/from16 v17, v8

    const/4 v2, -0x1

    const/16 v8, 0x75

    goto/16 :goto_2ef

    :cond_3cc
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "unterminated string literal"

    invoke-direct {v2, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3d4
    iget v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v2, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    if-ne v3, v14, :cond_3dd

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->TEMPLATE_LITERAL:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    goto :goto_3df

    :cond_3dd
    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->STRING:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    :goto_3df
    return-object v2

    :cond_3e0
    :goto_3e0
    iput v5, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ne v1, v12, :cond_425

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    if-eq v1, v15, :cond_41f

    const/16 v5, 0x58

    if-ne v1, v5, :cond_3f2

    goto :goto_41f

    :cond_3f2
    const/16 v5, 0x6f

    if-eq v1, v5, :cond_418

    const/16 v5, 0x4f

    if-ne v1, v5, :cond_3fb

    goto :goto_418

    :cond_3fb
    const/16 v5, 0x62

    if-eq v1, v5, :cond_412

    const/16 v5, 0x42

    if-ne v1, v5, :cond_404

    goto :goto_412

    :cond_404
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_40e

    const/16 v2, 0x8

    const/4 v3, 0x1

    goto :goto_425

    :cond_40e
    invoke-direct {v0, v12}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_425

    :cond_412
    :goto_412
    const/4 v2, 0x2

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    goto :goto_425

    :cond_418
    :goto_418
    const/16 v2, 0x8

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    goto :goto_425

    :cond_41f
    :goto_41f
    const/16 v2, 0x10

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    :cond_425
    :goto_425
    iget v5, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    const/4 v8, -0x2

    const-string v9, "number format error"

    if-eq v2, v4, :cond_45c

    const/16 v11, 0x10

    if-eq v2, v11, :cond_45c

    const/16 v11, 0x8

    if-ne v2, v11, :cond_436

    if-eqz v3, :cond_45c

    :cond_436
    move/from16 v11, v16

    if-ne v2, v11, :cond_43b

    goto :goto_45c

    :cond_43b
    :goto_43b
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v11

    if-eqz v11, :cond_462

    const/16 v11, 0x38

    if-lt v1, v11, :cond_454

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    move-result v1

    if-eq v1, v8, :cond_44e

    goto :goto_462

    :cond_44e
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v4, v9}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_454
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    goto :goto_43b

    :cond_45c
    :goto_45c
    invoke-direct {v0, v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    move-result v1

    if-eq v1, v8, :cond_4db

    :cond_462
    :goto_462
    iget v11, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    if-ne v11, v5, :cond_46f

    if-ne v2, v4, :cond_469

    goto :goto_46f

    :cond_469
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v4, v9}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_46f
    :goto_46f
    const/16 v11, 0x6e

    if-ne v1, v11, :cond_478

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    goto :goto_4d1

    :cond_478
    if-ne v2, v4, :cond_4d1

    if-eq v1, v14, :cond_484

    const/16 v4, 0x65

    if-eq v1, v4, :cond_484

    const/16 v4, 0x45

    if-ne v1, v4, :cond_4d1

    :cond_484
    if-ne v1, v14, :cond_49a

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    move-result v1

    if-eq v1, v8, :cond_494

    goto :goto_49a

    :cond_494
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v4, v9}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_49a
    :goto_49a
    const/16 v4, 0x65

    if-eq v1, v4, :cond_4a2

    const/16 v4, 0x45

    if-ne v1, v4, :cond_4d1

    :cond_4a2
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_4af

    if-ne v1, v6, :cond_4b6

    :cond_4af
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v1

    :cond_4b6
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_4c9

    invoke-direct {v0, v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    move-result v1

    if-eq v1, v8, :cond_4c3

    goto :goto_4d1

    :cond_4c3
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v4, v9}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4c9
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v6, "missing exponent"

    invoke-direct {v4, v6}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4d1
    :goto_4d1
    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    iget v4, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    iput v4, v0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    sget-object v4, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->NUMBER:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    return-object v4

    :cond_4db
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v4, v9}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :sswitch_data_4e2
    .sparse-switch
        0x21 -> :sswitch_2d3
        0x25 -> :sswitch_2c7
        0x26 -> :sswitch_2b0
        0x28 -> :sswitch_2ad
        0x29 -> :sswitch_2aa
        0x2a -> :sswitch_28c
        0x2b -> :sswitch_275
        0x2c -> :sswitch_272
        0x2d -> :sswitch_24c
        0x2e -> :sswitch_249
        0x2f -> :sswitch_1ed
        0x3a -> :sswitch_1ea
        0x3b -> :sswitch_1e7
        0x3c -> :sswitch_19f
        0x3d -> :sswitch_181
        0x3e -> :sswitch_151
        0x3f -> :sswitch_14e
        0x5b -> :sswitch_14b
        0x5d -> :sswitch_148
        0x5e -> :sswitch_13c
        0x7b -> :sswitch_139
        0x7c -> :sswitch_122
        0x7d -> :sswitch_11f
        0x7e -> :sswitch_11c
    .end sparse-switch

    :sswitch_data_544
    .sparse-switch
        0xa -> :sswitch_301
        0xd -> :sswitch_301
        0x2028 -> :sswitch_2fe
        0x2029 -> :sswitch_2fe
    .end sparse-switch

    :sswitch_data_556
    .sparse-switch
        0xa -> :sswitch_3ac
        0x62 -> :sswitch_3a7
        0x66 -> :sswitch_3a2
        0x6e -> :sswitch_39d
        0x72 -> :sswitch_398
        0x74 -> :sswitch_393
        0x75 -> :sswitch_366
        0x76 -> :sswitch_361
        0x78 -> :sswitch_33c
    .end sparse-switch
.end method

.method public nextToken()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getToken()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    move-result-object v0

    :goto_4
    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->EOL:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->COMMENT:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    return-object v0

    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getToken()Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    move-result-object v0

    goto :goto_4
.end method

.method readRegExp(Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;)V
    .registers 9

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    const-string v2, "msg.unterminated.re.lit"

    if-ne p1, v1, :cond_11

    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_20

    :cond_11
    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;->DIV:Lcom/gold/youtube/om7753/extractor/utils/jsextractor/Token;

    if-eq p1, v1, :cond_18

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_18
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->peekChar()I

    move-result v1

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_89

    :goto_20
    const/4 v1, 0x0

    :goto_21
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v3

    move v4, v3

    const/16 v5, 0x2f

    const/4 v6, -0x1

    if-ne v3, v5, :cond_58

    if-eqz v1, :cond_2e

    goto :goto_58

    :cond_2e
    :goto_2e
    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getCharIgnoreLineEnd()I

    move-result v4

    const-string v2, "gimysu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_3e

    invoke-direct {p0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_2e

    :cond_3e
    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->isAlpha(I)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-direct {p0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    nop

    iget v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    return-void

    :cond_50
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v3, "msg.invalid.re.flag"

    invoke-direct {v2, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_58
    :goto_58
    const/16 v3, 0xa

    if-eq v4, v3, :cond_83

    if-eq v4, v6, :cond_83

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_74

    invoke-direct {p0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar()I

    move-result v4

    if-eq v4, v3, :cond_6e

    if-eq v4, v6, :cond_6e

    goto :goto_7f

    :cond_6e
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v3, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_74
    const/16 v3, 0x5b

    if-ne v4, v3, :cond_7a

    const/4 v1, 0x1

    goto :goto_7f

    :cond_7a
    const/16 v3, 0x5d

    if-ne v4, v3, :cond_7f

    const/4 v1, 0x0

    :cond_7f
    :goto_7f
    invoke-direct {p0, v4}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    goto :goto_21

    :cond_83
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v3, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_89
    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
