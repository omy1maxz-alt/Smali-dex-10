.class Lorg/mozilla/javascript/TokenStream;
.super Ljava/lang/Object;
.source "TokenStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1


# instance fields
.field private allStrings:Lorg/mozilla/javascript/ObjToIntMap;

.field private commentCursor:I

.field private commentPrefix:Ljava/lang/String;

.field commentType:Lorg/mozilla/javascript/Token$CommentType;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private isBinary:Z

.field private isHex:Z

.field private isOctal:Z

.field private isOldOctal:Z

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field private number:D

.field private parser:Lorg/mozilla/javascript/Parser;

.field private quoteChar:I

.field regExpFlags:Ljava/lang/String;

.field private sourceBuffer:[C

.field sourceCursor:I

.field private sourceEnd:I

.field private sourceReader:Ljava/io/Reader;

.field private sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I

.field private xmlIsAttribute:Z

.field private xmlIsTagContent:Z

.field private xmlOpenTagsCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    new-instance v1, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iput p4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    if-eqz p2, :cond_3d

    if-eqz p3, :cond_32

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_32
    iput-object p2, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    const/16 p1, 0x200

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    goto :goto_4a

    :cond_3d
    if-nez p3, :cond_42

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_42
    iput-object p3, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    :goto_4a
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    return-void
.end method

.method private addToString(I)V
    .registers 6

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    array-length v2, v1

    if-ne v0, v2, :cond_12

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    :cond_12
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    int-to-char p1, p1

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    return-void
.end method

.method private canUngetChar()Z
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1
.end method

.method private final charAt(I)I
    .registers 5

    const/4 v0, -0x1

    if-gez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-lt p1, v2, :cond_d

    return v0

    :cond_d
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_12
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-lt p1, v1, :cond_25

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    :try_start_18
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_24

    if-nez v2, :cond_1f

    return v0

    :cond_1f
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_25

    :catch_24
    return v0

    :cond_25
    :goto_25
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    aget-char p1, v0, p1

    return p1
.end method

.method private static convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_2d

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fillSourceBuffer()Z
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_40

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    goto :goto_40

    :cond_32
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    :cond_40
    :goto_40
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gez v0, :cond_4f

    return v2

    :cond_4f
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    const/4 v0, 0x1

    return v0
.end method

.method private getChar()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v0

    return v0
.end method

.method private getChar(Z)I
    .registers 8

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget p1, p1, v0

    return p1

    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2e

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v3, v4, :cond_20

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    :cond_20
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4c

    :cond_2e
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_3d

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_3d

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    :cond_3d
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v3

    :goto_4c
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ltz v3, :cond_67

    if-ne v3, v4, :cond_5b

    if-ne v0, v5, :cond_5b

    iput v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_12

    :cond_5b
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    :cond_67
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_74

    if-eq v0, v5, :cond_6f

    if-ne v0, v4, :cond_8c

    :cond_6f
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    :goto_71
    const/16 v0, 0xa

    goto :goto_8c

    :cond_74
    const v2, 0xfeff

    if-ne v0, v2, :cond_7a

    return v0

    :cond_7a
    if-eqz p1, :cond_83

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_12

    :cond_83
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p1

    if-eqz p1, :cond_8c

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_71

    :cond_8c
    :goto_8c
    return v0
.end method

.method private getCharIgnoreLineEnd()I
    .registers 6

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget v0, v2, v0

    return v0

    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2e

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v3, v4, :cond_20

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    :cond_20
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4c

    :cond_2e
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_3d

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_3d

    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    :cond_3d
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v2

    :goto_4c
    const/16 v2, 0x7f

    const/16 v3, 0xa

    if-gt v0, v2, :cond_5d

    if-eq v0, v3, :cond_58

    const/16 v1, 0xd

    if-ne v0, v1, :cond_73

    :cond_58
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    :goto_5a
    const/16 v0, 0xa

    goto :goto_73

    :cond_5d
    const v2, 0xfeff

    if-ne v0, v2, :cond_63

    return v0

    :cond_63
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v2

    if-eqz v2, :cond_6a

    goto :goto_12

    :cond_6a
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_73

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_5a

    :cond_73
    :goto_73
    return v0
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static isAlpha(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_d

    const/16 v2, 0x41

    if-gt v2, p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    const/16 v2, 0x61

    if-gt v2, p0, :cond_16

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static isDigit(I)Z
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

.method private static isJSFormatChar(I)Z
    .registers 2

    const/16 v0, 0x7f

    if-le p0, v0, :cond_f

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method static isJSSpace(I)Z
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/16 v3, 0x7f

    if-gt p0, v3, :cond_18

    const/16 v3, 0x20

    if-eq p0, v3, :cond_16

    const/16 v3, 0x9

    if-eq p0, v3, :cond_16

    if-eq p0, v1, :cond_16

    const/16 v1, 0xb

    if-ne p0, v1, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0

    :cond_18
    const/16 v3, 0xa0

    if-eq p0, v3, :cond_28

    const v3, 0xfeff

    if-eq p0, v3, :cond_28

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    if-ne p0, v1, :cond_29

    :cond_28
    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method static isKeyword(Ljava/lang/String;IZ)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private isMarkingComment()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private markCommentStart()V
    .registers 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    return-void
.end method

.method private markCommentStart(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    if-eqz v0, :cond_16

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    :cond_16
    return-void
.end method

.method private matchChar(I)Z
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    if-ne v0, p1, :cond_c

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 p1, 0x1

    return p1

    :cond_c
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private peekChar()I
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    return v0
.end method

.method private readCDATA()Z
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_4
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_2c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_2c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    :cond_2c
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_4

    :cond_31
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readEntity()Z
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_6
    const/4 v3, -0x1

    if-eq v0, v3, :cond_21

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1a

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_15

    goto :goto_1c

    :cond_15
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_1c

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_6

    :cond_21
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readPI()Z
    .registers 4

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readQuotedString(I)Z
    .registers 4

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return p1
.end method

.method private readXmlComment()Z
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_4
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_2c

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    :cond_2c
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_4

    :cond_31
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private skipLine()V
    .registers 3

    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    goto :goto_0

    :cond_c
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return-void
.end method

.method private static stringToKeyword(Ljava/lang/String;IZ)I
    .registers 4

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_9

    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream;->stringToKeywordForJS(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_9
    invoke-static {p0, p2}, Lorg/mozilla/javascript/TokenStream;->stringToKeywordForES(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static stringToKeywordForES(Ljava/lang/String;Z)I
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x70

    const/16 v4, 0x64

    const/16 v5, 0x6d

    const/16 v7, 0x63

    const/16 v10, 0x66

    const/16 v12, 0x75

    const/16 v13, 0x61

    const/16 v14, 0x69

    const/16 v15, 0x74

    const/16 v11, 0x6e

    const/16 v6, 0x72

    const/16 v8, 0x65

    const/4 v9, 0x0

    const/16 v16, 0x80

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_28e

    goto/16 :goto_278

    :pswitch_27  #0xa
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_33

    if-eqz p1, :cond_33

    const-string v1, "implements"

    goto/16 :goto_107

    :cond_33
    if-ne v1, v11, :cond_278

    const/16 v3, 0x35

    const-string v1, "instanceof"

    goto/16 :goto_27a

    :pswitch_3b  #0x9
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_47

    if-eqz p1, :cond_47

    const-string v1, "interface"

    goto/16 :goto_107

    :cond_47
    if-ne v1, v2, :cond_278

    if-eqz p1, :cond_278

    const-string v1, "protected"

    goto/16 :goto_107

    :pswitch_4f  #0x8
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_67

    if-eq v1, v4, :cond_61

    if-eq v1, v10, :cond_5b

    goto/16 :goto_278

    :cond_5b
    const-string v1, "function"

    const/16 v3, 0x6e

    goto/16 :goto_27a

    :cond_61
    const/16 v3, 0xa1

    const-string v1, "debugger"

    goto/16 :goto_27a

    :cond_67
    const/16 v3, 0x7a

    const-string v1, "continue"

    goto/16 :goto_27a

    :pswitch_6d  #0x7
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_8f

    if-eq v1, v8, :cond_95

    if-eq v1, v14, :cond_89

    if-eq v1, v6, :cond_7f

    const/16 v2, 0x78

    if-eq v1, v2, :cond_85

    goto/16 :goto_278

    :cond_7f
    if-eqz p1, :cond_85

    const-string v1, "private"

    goto/16 :goto_107

    :cond_85
    const-string v1, "extends"

    goto/16 :goto_107

    :cond_89
    const/16 v3, 0x7e

    const-string v1, "finally"

    goto/16 :goto_27a

    :cond_8f
    if-eqz p1, :cond_95

    const-string v1, "package"

    goto/16 :goto_107

    :cond_95
    const-string v1, "default"

    const/16 v3, 0x75

    goto/16 :goto_27a

    :pswitch_9b  #0x6
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_cb

    if-eq v1, v5, :cond_c8

    if-eq v1, v15, :cond_b6

    if-eq v1, v12, :cond_bc

    packed-switch v1, :pswitch_data_2a4

    goto/16 :goto_278

    :pswitch_ac  #0x79
    const/16 v3, 0x20

    const-string/jumbo v1, "typeof"

    goto/16 :goto_27a

    :pswitch_b3  #0x78
    const-string v1, "export"

    goto :goto_107

    :cond_b6
    if-eqz p1, :cond_bc

    const-string/jumbo v1, "static"

    goto :goto_107

    :cond_bc
    if-eqz p1, :cond_c1

    const-string v1, "public"

    goto :goto_107

    :cond_c1
    :pswitch_c1  #0x77
    const-string/jumbo v1, "switch"

    const/16 v3, 0x73

    goto/16 :goto_27a

    :cond_c8
    const-string v1, "import"

    goto :goto_107

    :cond_cb
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_d7

    const/16 v3, 0x1f

    const-string v1, "delete"

    goto/16 :goto_27a

    :cond_d7
    if-ne v1, v6, :cond_278

    const/4 v3, 0x4

    const-string v1, "return"

    goto/16 :goto_27a

    :pswitch_de  #0x5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_137

    if-eq v1, v8, :cond_11e

    if-eq v1, v14, :cond_117

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_111

    if-eq v1, v11, :cond_10b

    if-eq v1, v2, :cond_104

    if-eq v1, v6, :cond_fd

    if-eq v1, v15, :cond_f7

    goto/16 :goto_278

    :cond_f7
    const/16 v3, 0x7d

    const-string v1, "catch"

    goto/16 :goto_27a

    :cond_fd
    const/16 v3, 0x32

    const-string/jumbo v1, "throw"

    goto/16 :goto_27a

    :cond_104
    const-string/jumbo v1, "super"

    :goto_107
    const/16 v3, 0x80

    goto/16 :goto_27a

    :cond_10b
    const/16 v3, 0x9b

    const-string v1, "const"

    goto/16 :goto_27a

    :cond_111
    const/16 v3, 0x2c

    const-string v1, "false"

    goto/16 :goto_27a

    :cond_117
    const-string/jumbo v1, "while"

    const/16 v3, 0x76

    goto/16 :goto_27a

    :cond_11e
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_12c

    const-string v1, "break"

    const/16 v3, 0x79

    goto/16 :goto_27a

    :cond_12c
    const/16 v2, 0x79

    if-ne v1, v2, :cond_278

    const/16 v3, 0x49

    const-string/jumbo v1, "yield"

    goto/16 :goto_27a

    :cond_137
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_140

    const-string v1, "class"

    goto :goto_107

    :cond_140
    if-ne v1, v13, :cond_278

    const-string v1, "await"

    goto :goto_107

    :pswitch_145  #0x4
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v7, :cond_1ca

    if-eq v1, v8, :cond_19e

    if-eq v1, v11, :cond_198

    if-eq v1, v15, :cond_16a

    const/16 v4, 0x76

    if-eq v1, v4, :cond_163

    const/16 v2, 0x77

    if-eq v1, v2, :cond_15c

    goto/16 :goto_278

    :cond_15c
    const/16 v3, 0x7c

    const-string/jumbo v1, "with"

    goto/16 :goto_27a

    :cond_163
    const/16 v3, 0x7f

    const-string/jumbo v1, "void"

    goto/16 :goto_27a

    :cond_16a
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_181

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_278

    const/16 v6, 0x2d

    goto/16 :goto_287

    :cond_181
    const/4 v2, 0x2

    const/16 v4, 0x73

    if-ne v1, v4, :cond_278

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_278

    const/16 v6, 0x2b

    goto/16 :goto_287

    :cond_198
    const/16 v3, 0x2a

    const-string v1, "null"

    goto/16 :goto_27a

    :cond_19e
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_1b7

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_278

    goto/16 :goto_287

    :cond_1b7
    const/4 v4, 0x2

    if-ne v1, v5, :cond_278

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_278

    const/16 v6, 0x80

    goto/16 :goto_287

    :cond_1ca
    const/4 v4, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_278

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_278

    const/16 v6, 0x74

    goto/16 :goto_287

    :pswitch_1e3  #0x3
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v10, :cond_23d

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_22d

    if-eq v1, v11, :cond_21b

    if-eq v1, v15, :cond_208

    const/16 v2, 0x76

    if-eq v1, v2, :cond_1f7

    goto/16 :goto_278

    :cond_1f7
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_278

    const/16 v6, 0x7b

    goto/16 :goto_287

    :cond_208
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_278

    const/16 v6, 0x52

    goto/16 :goto_287

    :cond_21b
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_278

    const/16 v6, 0x1e

    goto :goto_287

    :cond_22d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_278

    const/16 v6, 0x9a

    goto :goto_287

    :cond_23d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_278

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_278

    const/16 v6, 0x78

    goto :goto_287

    :pswitch_24f  #0x2
    const/16 v2, 0x77

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_260

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_278

    const/16 v6, 0x71

    goto :goto_287

    :cond_260
    if-ne v1, v11, :cond_26b

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_278

    const/16 v6, 0x34

    goto :goto_287

    :cond_26b
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_278

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_278

    const/16 v6, 0x77

    goto :goto_287

    :cond_278
    :goto_278
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_27a
    if-eqz v1, :cond_286

    if-eq v1, v0, :cond_286

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_286

    const/4 v6, 0x0

    goto :goto_287

    :cond_286
    move v6, v3

    :goto_287
    if-nez v6, :cond_28a

    return v9

    :cond_28a
    and-int/lit16 v0, v6, 0xff

    return v0

    nop

    :pswitch_data_28e
    .packed-switch 0x2
        :pswitch_24f  #00000002
        :pswitch_1e3  #00000003
        :pswitch_145  #00000004
        :pswitch_de  #00000005
        :pswitch_9b  #00000006
        :pswitch_6d  #00000007
        :pswitch_4f  #00000008
        :pswitch_3b  #00000009
        :pswitch_27  #0000000a
    .end packed-switch

    :pswitch_data_2a4
    .packed-switch 0x77
        :pswitch_c1  #00000077
        :pswitch_b3  #00000078
        :pswitch_ac  #00000079
    .end packed-switch
.end method

.method private static stringToKeywordForJS(Ljava/lang/String;)I
    .registers 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x64

    const/16 v4, 0x6d

    const/16 v7, 0x63

    const/16 v9, 0x6f

    const/16 v10, 0x76

    const/16 v13, 0x66

    const/16 v14, 0x61

    const/16 v15, 0x6e

    const/16 v6, 0x69

    const/16 v2, 0x74

    const/16 v12, 0x72

    const/16 v11, 0x65

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x80

    packed-switch v1, :pswitch_data_300

    :pswitch_25  #0xb
    goto/16 :goto_2eb

    :pswitch_27  #0xc
    const-string/jumbo v1, "synchronized"

    :goto_2a
    const/16 v2, 0x80

    goto/16 :goto_2ed

    :pswitch_2e  #0xa
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_37

    const-string v1, "implements"

    goto :goto_2a

    :cond_37
    if-ne v1, v15, :cond_2eb

    const/16 v2, 0x35

    const-string v1, "instanceof"

    goto/16 :goto_2ed

    :pswitch_3f  #0x9
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_48

    const-string v1, "interface"

    goto :goto_2a

    :cond_48
    const/16 v3, 0x70

    if-ne v1, v3, :cond_4f

    const-string v1, "protected"

    goto :goto_2a

    :cond_4f
    if-ne v1, v2, :cond_2eb

    const-string/jumbo v1, "transient"

    goto :goto_2a

    :pswitch_55  #0x8
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_7b

    if-eq v1, v13, :cond_75

    if-eq v1, v10, :cond_71

    if-eq v1, v7, :cond_6b

    if-eq v1, v3, :cond_65

    goto/16 :goto_2eb

    :cond_65
    const/16 v2, 0xa1

    const-string v1, "debugger"

    goto/16 :goto_2ed

    :cond_6b
    const/16 v2, 0x7a

    const-string v1, "continue"

    goto/16 :goto_2ed

    :cond_71
    const-string/jumbo v1, "volatile"

    goto :goto_2a

    :cond_75
    const-string v1, "function"

    const/16 v2, 0x6e

    goto/16 :goto_2ed

    :cond_7b
    const-string v1, "abstract"

    goto :goto_2a

    :pswitch_7e  #0x7
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_a7

    if-eq v1, v11, :cond_a1

    if-eq v1, v6, :cond_9b

    if-eq v1, v9, :cond_98

    if-eq v1, v12, :cond_95

    const/16 v2, 0x78

    if-eq v1, v2, :cond_92

    goto/16 :goto_2eb

    :cond_92
    const-string v1, "extends"

    goto :goto_2a

    :cond_95
    const-string v1, "private"

    goto :goto_2a

    :cond_98
    const-string v1, "boolean"

    goto :goto_2a

    :cond_9b
    const/16 v2, 0x7e

    const-string v1, "finally"

    goto/16 :goto_2ed

    :cond_a1
    const-string v1, "default"

    const/16 v2, 0x75

    goto/16 :goto_2ed

    :cond_a7
    const-string v1, "package"

    goto :goto_2a

    :pswitch_aa  #0x6
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_100

    if-eq v1, v11, :cond_ed

    const/16 v5, 0x68

    if-eq v1, v5, :cond_e8

    if-eq v1, v4, :cond_e4

    if-eq v1, v9, :cond_e0

    if-eq v1, v2, :cond_db

    const/16 v2, 0x75

    if-eq v1, v2, :cond_d7

    packed-switch v1, :pswitch_data_31a

    goto/16 :goto_2eb

    :pswitch_c5  #0x79
    const/16 v2, 0x20

    const-string/jumbo v1, "typeof"

    goto/16 :goto_2ed

    :pswitch_cc  #0x78
    const-string v1, "export"

    goto/16 :goto_2a

    :pswitch_d0  #0x77
    const-string/jumbo v1, "switch"

    const/16 v2, 0x73

    goto/16 :goto_2ed

    :cond_d7
    const-string v1, "public"

    goto/16 :goto_2a

    :cond_db
    const-string/jumbo v1, "static"

    goto/16 :goto_2a

    :cond_e0
    const-string v1, "double"

    goto/16 :goto_2a

    :cond_e4
    const-string v1, "import"

    goto/16 :goto_2a

    :cond_e8
    const-string/jumbo v1, "throws"

    goto/16 :goto_2a

    :cond_ed
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_f9

    const/16 v2, 0x1f

    const-string v1, "delete"

    goto/16 :goto_2ed

    :cond_f9
    if-ne v1, v12, :cond_2eb

    const/4 v2, 0x4

    const-string v1, "return"

    goto/16 :goto_2ed

    :cond_100
    const-string v1, "native"

    goto/16 :goto_2a

    :pswitch_104  #0x5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_179

    if-eq v1, v11, :cond_160

    if-eq v1, v6, :cond_159

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_153

    if-eq v1, v12, :cond_14c

    if-eq v1, v2, :cond_146

    packed-switch v1, :pswitch_data_324

    goto/16 :goto_2eb

    :pswitch_11c  #0x70
    const-string/jumbo v1, "super"

    goto/16 :goto_2a

    :pswitch_121  #0x6f
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_12b

    const-string v1, "float"

    goto/16 :goto_2a

    :cond_12b
    const/16 v2, 0x73

    if-ne v1, v2, :cond_2eb

    const-string/jumbo v1, "short"

    goto/16 :goto_2a

    :pswitch_134  #0x6e
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_140

    const/16 v2, 0x9b

    const-string v1, "const"

    goto/16 :goto_2ed

    :cond_140
    if-ne v1, v13, :cond_2eb

    const-string v1, "final"

    goto/16 :goto_2a

    :cond_146
    const/16 v2, 0x7d

    const-string v1, "catch"

    goto/16 :goto_2ed

    :cond_14c
    const/16 v2, 0x32

    const-string/jumbo v1, "throw"

    goto/16 :goto_2ed

    :cond_153
    const/16 v2, 0x2c

    const-string v1, "false"

    goto/16 :goto_2ed

    :cond_159
    const-string/jumbo v1, "while"

    const/16 v2, 0x76

    goto/16 :goto_2ed

    :cond_160
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_16e

    const-string v1, "break"

    const/16 v2, 0x79

    goto/16 :goto_2ed

    :cond_16e
    const/16 v2, 0x79

    if-ne v1, v2, :cond_2eb

    const/16 v2, 0x49

    const-string/jumbo v1, "yield"

    goto/16 :goto_2ed

    :cond_179
    const-string v1, "class"

    goto/16 :goto_2a

    :pswitch_17d  #0x4
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x62

    if-eq v1, v3, :cond_245

    if-eq v1, v7, :cond_219

    if-eq v1, v11, :cond_1ea

    const/16 v3, 0x67

    if-eq v1, v3, :cond_1e6

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_1e2

    if-eq v1, v15, :cond_1dc

    if-eq v1, v2, :cond_1ab

    if-eq v1, v10, :cond_1a4

    const/16 v2, 0x77

    if-eq v1, v2, :cond_19d

    goto/16 :goto_2eb

    :cond_19d
    const/16 v2, 0x7c

    const-string/jumbo v1, "with"

    goto/16 :goto_2ed

    :cond_1a4
    const/16 v2, 0x7f

    const-string/jumbo v1, "void"

    goto/16 :goto_2ed

    :cond_1ab
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1c5

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_2eb

    const/16 v6, 0x2d

    goto/16 :goto_2fa

    :cond_1c5
    const/4 v2, 0x2

    const/16 v3, 0x73

    if-ne v1, v3, :cond_2eb

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_2eb

    const/16 v6, 0x2b

    goto/16 :goto_2fa

    :cond_1dc
    const/16 v2, 0x2a

    const-string v1, "null"

    goto/16 :goto_2ed

    :cond_1e2
    const-string v1, "long"

    goto/16 :goto_2a

    :cond_1e6
    const-string v1, "goto"

    goto/16 :goto_2a

    :cond_1ea
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_206

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_2eb

    const/16 v6, 0x72

    goto/16 :goto_2fa

    :cond_206
    const/4 v3, 0x2

    if-ne v1, v4, :cond_2eb

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_2eb

    goto/16 :goto_2b1

    :cond_219
    const/4 v3, 0x2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_233

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_2eb

    const/16 v6, 0x74

    goto/16 :goto_2fa

    :cond_233
    if-ne v1, v12, :cond_2eb

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_2eb

    goto/16 :goto_2b1

    :cond_245
    const-string v1, "byte"

    goto/16 :goto_2a

    :pswitch_249  #0x3
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_2b4

    if-eq v1, v6, :cond_2a4

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_294

    if-eq v1, v15, :cond_281

    if-eq v1, v2, :cond_26e

    if-eq v1, v10, :cond_25d

    goto/16 :goto_2eb

    :cond_25d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_2eb

    const/16 v6, 0x7b

    goto/16 :goto_2fa

    :cond_26e
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_2eb

    const/16 v6, 0x52

    goto/16 :goto_2fa

    :cond_281
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_2eb

    const/16 v6, 0x1e

    goto/16 :goto_2fa

    :cond_294
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_2eb

    const/16 v6, 0x9a

    goto :goto_2fa

    :cond_2a4
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_2eb

    :goto_2b1
    const/16 v6, 0x80

    goto :goto_2fa

    :cond_2b4
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_2eb

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_2eb

    const/16 v6, 0x78

    goto :goto_2fa

    :pswitch_2c4  #0x2
    const/16 v2, 0x77

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_2d5

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_2eb

    const/16 v6, 0x71

    goto :goto_2fa

    :cond_2d5
    if-ne v1, v15, :cond_2e0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_2eb

    const/16 v6, 0x34

    goto :goto_2fa

    :cond_2e0
    if-ne v1, v9, :cond_2eb

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2eb

    const/16 v6, 0x77

    goto :goto_2fa

    :cond_2eb
    :goto_2eb
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2ed
    if-eqz v1, :cond_2f9

    if-eq v1, v0, :cond_2f9

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f9

    const/4 v6, 0x0

    goto :goto_2fa

    :cond_2f9
    move v6, v2

    :goto_2fa
    if-nez v6, :cond_2fd

    return v8

    :cond_2fd
    and-int/lit16 v0, v6, 0xff

    return v0

    :pswitch_data_300
    .packed-switch 0x2
        :pswitch_2c4  #00000002
        :pswitch_249  #00000003
        :pswitch_17d  #00000004
        :pswitch_104  #00000005
        :pswitch_aa  #00000006
        :pswitch_7e  #00000007
        :pswitch_55  #00000008
        :pswitch_3f  #00000009
        :pswitch_2e  #0000000a
        :pswitch_25  #0000000b
        :pswitch_27  #0000000c
    .end packed-switch

    :pswitch_data_31a
    .packed-switch 0x77
        :pswitch_d0  #00000077
        :pswitch_cc  #00000078
        :pswitch_c5  #00000079
    .end packed-switch

    :pswitch_data_324
    .packed-switch 0x6e
        :pswitch_134  #0000006e
        :pswitch_121  #0000006f
        :pswitch_11c  #00000070
    .end packed-switch
.end method

.method private final substring(II)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private ungetChar(I)V
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_11
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method


# virtual methods
.method final eof()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v0
.end method

.method final getAndResetCurrentComment()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_d
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getCursor()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return v0
.end method

.method getFirstXMLToken()I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->canUngetChar()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, -0x1

    return v0

    :cond_f
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    return v0
.end method

.method final getLine()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/4 v2, -0x1

    if-ltz v1, :cond_19

    add-int/2addr v0, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_32

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_32

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    :cond_19
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    :goto_1c
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    if-eq v1, v2, :cond_2f

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2f
    :goto_2f
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v0, v1

    :cond_32
    :goto_32
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getLine(I[I)Ljava/lang/String;
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    if-le v0, p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-lez v0, :cond_38

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_33

    const/16 v3, 0xa

    if-ne v4, v3, :cond_2f

    add-int/lit8 v3, p1, -0x2

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2f

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, -0x1

    :cond_33
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_f

    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-lez p1, :cond_4d

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v4

    if-eqz v4, :cond_48

    goto :goto_4e

    :cond_48
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4d
    const/4 p1, 0x0

    :goto_4e
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    sub-int/2addr v4, v2

    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/4 v6, 0x1

    if-ltz v5, :cond_58

    const/4 v5, 0x1

    goto :goto_59

    :cond_58
    const/4 v5, 0x0

    :goto_59
    add-int/2addr v4, v5

    aput v4, p2, v1

    aput v0, p2, v6

    if-nez v2, :cond_65

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_65
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final getLineno()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    return v0
.end method

.method getNextXMLToken()I
    .registers 11

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :cond_7
    :goto_7
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const-string v2, "msg.XML.bad.form"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_17f

    iget-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    const/16 v6, 0x92

    const/16 v7, 0x2f

    const/16 v8, 0x7b

    const/4 v9, 0x1

    if-eqz v5, :cond_94

    const/16 v2, 0x9

    if-eq v1, v2, :cond_80

    const/16 v2, 0xa

    if-eq v1, v2, :cond_80

    const/16 v2, 0xd

    if-eq v1, v2, :cond_80

    const/16 v2, 0x20

    if-eq v1, v2, :cond_80

    const/16 v2, 0x22

    if-eq v1, v2, :cond_76

    const/16 v2, 0x27

    if-eq v1, v2, :cond_76

    const/16 v2, 0x3e

    if-eq v1, v7, :cond_5e

    if-eq v1, v8, :cond_54

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_4e

    if-eq v1, v2, :cond_46

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_83

    :cond_46
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_83

    :cond_4e
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_83

    :cond_54
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v6

    :cond_5e
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v2, :cond_83

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    sub-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto :goto_83

    :cond_76
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->readQuotedString(I)Z

    move-result v1

    if-nez v1, :cond_83

    return v4

    :cond_80
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_83
    :goto_83
    iget-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    if-nez v1, :cond_7

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_7

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x95

    return v0

    :cond_94
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_a9

    if-eq v1, v8, :cond_9f

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_7

    :cond_9f
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v6

    :cond_a9
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v5, 0x21

    if-eq v1, v5, :cond_ee

    if-eq v1, v7, :cond_d1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_c3

    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    add-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_7

    :cond_c3
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readPI()Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    :cond_d1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_e6

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    :cond_e6
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_7

    :cond_ee
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_15e

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_108

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readEntity()Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    :cond_108
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v6, 0x43

    if-ne v1, v6, :cond_154

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v7, 0x44

    if-ne v1, v7, :cond_154

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v8, 0x41

    if-ne v1, v8, :cond_154

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v9, 0x54

    if-ne v1, v9, :cond_154

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v8, :cond_154

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_154

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readCDATA()Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    :cond_154
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    :cond_15e
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_175

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readXmlComment()Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    :cond_175
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    :cond_17f
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4
.end method

.method final getNumber()D
    .registers 3

    iget-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    return-wide v0
.end method

.method final getOffset()I
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    :cond_b
    return v0
.end method

.method final getQuoteChar()C
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    int-to-char v0, v0

    return v0
.end method

.method final getSourceString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method final getString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return-object v0
.end method

.method final getToken()I
    .registers 17

    move-object/from16 v0, p0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v3

    :cond_13
    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_23

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v5

    :cond_23
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isJSSpace(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_2f

    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    :cond_2f
    iget v7, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iput v7, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v7, 0x40

    if-ne v1, v7, :cond_3e

    const/16 v1, 0x94

    return v1

    :cond_3e
    const/16 v7, 0x75

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_56

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v7, :cond_4f

    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_63

    :cond_4f
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    const/16 v1, 0x5c

    const/4 v9, 0x0

    goto :goto_62

    :cond_56
    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v9

    if-eqz v9, :cond_62

    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_62
    :goto_62
    const/4 v10, 0x0

    :goto_63
    const/4 v11, 0x4

    const/16 v12, 0x27

    if-eqz v9, :cond_13f

    move v1, v10

    :goto_69
    if-eqz v10, :cond_8c

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_6d
    if-eq v4, v11, :cond_7d

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v9

    invoke-static {v9, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_7a

    goto :goto_7d

    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_7d
    :goto_7d
    if-gez v6, :cond_87

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.invalid.escape"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_87
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v10, 0x0

    goto :goto_69

    :cond_8c
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    if-ne v4, v8, :cond_a3

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v7, :cond_9b

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_69

    :cond_9b
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v4, "msg.illegal.character"

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    return v2

    :cond_a3
    if-eq v4, v2, :cond_b6

    const v6, 0xfeff

    if-eq v4, v6, :cond_b6

    int-to-char v6, v4

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_b2

    goto :goto_b6

    :cond_b2
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_69

    :cond_b6
    :goto_b6
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_11c

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_134

    const/16 v3, 0x9a

    if-eq v1, v3, :cond_db

    const/16 v3, 0x49

    if-ne v1, v3, :cond_f5

    :cond_db
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xaa

    if-ge v3, v4, :cond_f5

    const/16 v3, 0x9a

    if-ne v1, v3, :cond_ee

    const-string v1, "let"

    goto :goto_f1

    :cond_ee
    const-string/jumbo v1, "yield"

    :goto_f1
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x27

    :cond_f5
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v3, 0x80

    if-eq v1, v3, :cond_104

    return v1

    :cond_104
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_111

    return v1

    :cond_111
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v3

    if-nez v3, :cond_134

    return v1

    :cond_11c
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_134

    invoke-static {v2}, Lorg/mozilla/javascript/TokenStream;->convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_134
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v12

    :cond_13f
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v9

    const/16 v10, 0x10

    const/4 v13, 0x2

    const/16 v14, 0x78

    const/16 v7, 0x2e

    const/16 v15, 0x30

    if-nez v9, :cond_46a

    if-ne v1, v7, :cond_15c

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v9

    invoke-static {v9}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_15c

    goto/16 :goto_46a

    :cond_15c
    const/16 v9, 0x22

    if-eq v1, v9, :cond_379

    if-eq v1, v12, :cond_379

    const/16 v9, 0x60

    if-ne v1, v9, :cond_168

    goto/16 :goto_379

    :cond_168
    const/16 v9, 0x2f

    const/16 v12, 0x21

    const/16 v14, 0x3d

    if-eq v1, v12, :cond_366

    const/16 v15, 0x5b

    if-eq v1, v15, :cond_363

    const/16 v15, 0x25

    if-eq v1, v15, :cond_357

    const/16 v15, 0x26

    if-eq v1, v15, :cond_340

    const/16 v15, 0x5d

    if-eq v1, v15, :cond_33d

    const/16 v15, 0x5e

    if-eq v1, v15, :cond_333

    const/16 v4, 0x3e

    const/16 v15, 0xa2

    packed-switch v1, :pswitch_data_5ac

    packed-switch v1, :pswitch_data_5c0

    packed-switch v1, :pswitch_data_5d0

    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v4, "msg.illegal.character"

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    return v2

    :pswitch_199  #0x7e
    const/16 v1, 0x1b

    return v1

    :pswitch_19c  #0x7d
    const/16 v1, 0x57

    return v1

    :pswitch_19f  #0x7c
    const/16 v1, 0x7c

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1aa

    const/16 v1, 0x69

    return v1

    :cond_1aa
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1b1

    return v8

    :cond_1b1
    const/16 v1, 0x9

    return v1

    :pswitch_1b4  #0x7b
    const/16 v1, 0x56

    return v1

    :pswitch_1b7  #0x3f
    const/16 v1, 0x67

    return v1

    :pswitch_1ba  #0x3e
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1de

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1d2

    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1cf

    const/16 v1, 0x61

    return v1

    :cond_1cf
    const/16 v1, 0x14

    return v1

    :cond_1d2
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1db

    const/16 v1, 0x60

    return v1

    :cond_1db
    const/16 v1, 0x13

    return v1

    :cond_1de
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1e7

    const/16 v1, 0x11

    return v1

    :cond_1e7
    return v10

    :pswitch_1e8  #0x3d
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1f8

    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_1f5

    return v7

    :cond_1f5
    const/16 v1, 0xc

    return v1

    :cond_1f8
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_201

    const/16 v1, 0xa5

    return v1

    :cond_201
    const/16 v1, 0x5b

    return v1

    :pswitch_204  #0x3c
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_229

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_226

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_223

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v11

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_223
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_226
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_229
    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_23d

    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_23a

    const/16 v1, 0x5f

    return v1

    :cond_23a
    const/16 v1, 0x12

    return v1

    :cond_23d
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_246

    const/16 v1, 0xf

    return v1

    :cond_246
    const/16 v1, 0xe

    return v1

    :pswitch_249  #0x3b
    const/16 v1, 0x53

    return v1

    :pswitch_24c  #0x3a
    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_257

    const/16 v1, 0x91

    return v1

    :cond_257
    const/16 v1, 0x68

    return v1

    :pswitch_25a  #0x2f
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart()V

    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_270

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v13

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_270
    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2b6

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v13

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_28b

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    :goto_289
    const/4 v1, 0x1

    goto :goto_290

    :cond_28b
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    :goto_28f
    const/4 v1, 0x0

    :cond_290
    :goto_290
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    if-ne v4, v2, :cond_2a3

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v1, v5

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.unterminated.comment"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v15

    :cond_2a3
    const/16 v6, 0x2a

    if-ne v4, v6, :cond_2a8

    goto :goto_289

    :cond_2a8
    if-ne v4, v9, :cond_2b1

    if-eqz v1, :cond_290

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v15

    :cond_2b1
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    goto :goto_28f

    :cond_2b6
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2bf

    const/16 v1, 0x65

    return v1

    :cond_2bf
    const/16 v1, 0x18

    return v1

    :pswitch_2c2  #0x2e
    invoke-direct {v0, v7}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2cb

    const/16 v1, 0x90

    return v1

    :cond_2cb
    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2d6

    const/16 v1, 0x93

    return v1

    :cond_2d6
    const/16 v1, 0x6d

    return v1

    :pswitch_2d9  #0x2d
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2e2

    const/16 v1, 0x63

    goto :goto_304

    :cond_2e2
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_302

    iget-boolean v1, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    if-nez v1, :cond_2ff

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_2ff

    const-string v1, "--"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_2ff
    const/16 v1, 0x6c

    goto :goto_304

    :cond_302
    const/16 v1, 0x16

    :goto_304
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    return v1

    :pswitch_307  #0x2c
    const/16 v1, 0x5a

    return v1

    :pswitch_30a  #0x2b
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_313

    const/16 v1, 0x62

    return v1

    :cond_313
    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_31e

    const/16 v1, 0x6b

    return v1

    :cond_31e
    const/16 v1, 0x15

    return v1

    :pswitch_321  #0x2a
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_32a

    const/16 v1, 0x64

    return v1

    :cond_32a
    const/16 v1, 0x17

    return v1

    :pswitch_32d  #0x29
    const/16 v1, 0x59

    return v1

    :pswitch_330  #0x28
    const/16 v1, 0x58

    return v1

    :cond_333
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_33c

    const/16 v1, 0x5d

    return v1

    :cond_33c
    return v4

    :cond_33d
    const/16 v1, 0x55

    return v1

    :cond_340
    const/16 v1, 0x26

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_34b

    const/16 v1, 0x6a

    return v1

    :cond_34b
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_354

    const/16 v1, 0x5e

    return v1

    :cond_354
    const/16 v1, 0xb

    return v1

    :cond_357
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_360

    const/16 v1, 0x66

    return v1

    :cond_360
    const/16 v1, 0x19

    return v1

    :cond_363
    const/16 v1, 0x54

    return v1

    :cond_366
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_376

    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v1

    if-eqz v1, :cond_373

    return v9

    :cond_373
    const/16 v1, 0xd

    return v1

    :cond_376
    const/16 v1, 0x1a

    return v1

    :cond_379
    :goto_379
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v1

    :goto_381
    iget v5, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    if-eq v1, v5, :cond_459

    if-eq v1, v4, :cond_44a

    if-ne v1, v2, :cond_38b

    goto/16 :goto_44a

    :cond_38b
    if-ne v1, v8, :cond_43f

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-eq v1, v4, :cond_437

    const/16 v5, 0x62

    if-eq v1, v5, :cond_432

    const/16 v5, 0x66

    if-eq v1, v5, :cond_42d

    const/16 v5, 0x6e

    if-eq v1, v5, :cond_428

    const/16 v5, 0x72

    if-eq v1, v5, :cond_423

    if-eq v1, v14, :cond_3ff

    packed-switch v1, :pswitch_data_5dc

    if-gt v15, v1, :cond_43f

    const/16 v5, 0x38

    if-ge v1, v5, :cond_43f

    add-int/lit8 v1, v1, -0x30

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    if-gt v15, v6, :cond_3d0

    if-ge v6, v5, :cond_3d0

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v15

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    if-gt v15, v6, :cond_3d0

    if-ge v6, v5, :cond_3d0

    const/16 v5, 0x1f

    if-gt v1, v5, :cond_3d0

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v15

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    :cond_3d0
    invoke-direct {v0, v6}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    goto/16 :goto_43f

    :pswitch_3d5  #0x76
    const/16 v1, 0xb

    goto/16 :goto_43f

    :pswitch_3d9  #0x75
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/16 v5, 0x75

    invoke-direct {v0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3e2
    if-eq v7, v11, :cond_3f6

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v9

    invoke-static {v9, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_3f0

    move v1, v9

    goto :goto_381

    :cond_3f0
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3e2

    :cond_3f6
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :cond_3f8
    move v1, v6

    goto :goto_441

    :pswitch_3fa  #0x74
    const/16 v5, 0x75

    const/16 v1, 0x9

    goto :goto_441

    :cond_3ff
    const/16 v5, 0x75

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-static {v1, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_410

    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_381

    :cond_410
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v7

    invoke-static {v7, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_3f8

    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    move v1, v7

    goto/16 :goto_381

    :cond_423
    const/16 v5, 0x75

    const/16 v1, 0xd

    goto :goto_441

    :cond_428
    const/16 v5, 0x75

    const/16 v1, 0xa

    goto :goto_441

    :cond_42d
    const/16 v5, 0x75

    const/16 v1, 0xc

    goto :goto_441

    :cond_432
    const/16 v5, 0x75

    const/16 v1, 0x8

    goto :goto_441

    :cond_437
    const/16 v5, 0x75

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    goto/16 :goto_381

    :cond_43f
    :goto_43f
    const/16 v5, 0x75

    :goto_441
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v1

    goto/16 :goto_381

    :cond_44a
    :goto_44a
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.unterminated.string.lit"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_459
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x29

    return v1

    :cond_46a
    :goto_46a
    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v8, v8, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v8

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_482

    const/4 v8, 0x1

    goto :goto_483

    :cond_482
    const/4 v8, 0x0

    :goto_483
    if-ne v1, v15, :cond_4cb

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-eq v1, v14, :cond_4c2

    const/16 v9, 0x58

    if-ne v1, v9, :cond_490

    goto :goto_4c2

    :cond_490
    if-eqz v8, :cond_4a3

    const/16 v9, 0x6f

    if-eq v1, v9, :cond_49a

    const/16 v9, 0x4f

    if-ne v1, v9, :cond_4a3

    :cond_49a
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :goto_4a0
    const/16 v8, 0x8

    goto :goto_4cd

    :cond_4a3
    if-eqz v8, :cond_4b5

    const/16 v8, 0x62

    if-eq v1, v8, :cond_4ad

    const/16 v8, 0x42

    if-ne v1, v8, :cond_4b5

    :cond_4ad
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v8, 0x2

    goto :goto_4cd

    :cond_4b5
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_4be

    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    goto :goto_4a0

    :cond_4be
    invoke-direct {v0, v15}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4cb

    :cond_4c2
    :goto_4c2
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v8, 0x10

    goto :goto_4cd

    :cond_4cb
    :goto_4cb
    const/16 v8, 0xa

    :goto_4cd
    const-string v9, "msg.caught.nfe"

    if-ne v8, v10, :cond_4e1

    const/4 v10, 0x1

    :goto_4d2
    invoke-static {v1, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v11

    if-ltz v11, :cond_520

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v10, 0x0

    goto :goto_4d2

    :cond_4e1
    const/4 v10, 0x1

    :goto_4e2
    if-gt v15, v1, :cond_520

    const/16 v11, 0x39

    if-gt v1, v11, :cond_520

    const/16 v11, 0x8

    const/16 v12, 0x38

    if-ne v8, v11, :cond_50b

    if-lt v1, v12, :cond_50b

    iget-boolean v8, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    if-eqz v8, :cond_505

    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    if-ne v1, v12, :cond_4fb

    const-string v10, "8"

    goto :goto_4fd

    :cond_4fb
    const-string v10, "9"

    :goto_4fd
    const-string v14, "msg.bad.octal.literal"

    invoke-virtual {v8, v14, v10}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xa

    goto :goto_517

    :cond_505
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_50b
    if-ne v8, v13, :cond_517

    const/16 v10, 0x32

    if-lt v1, v10, :cond_517

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_517
    :goto_517
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/4 v10, 0x0

    goto :goto_4e2

    :cond_520
    if-eqz v10, :cond_534

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    if-nez v10, :cond_52e

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    if-nez v10, :cond_52e

    iget-boolean v10, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    if-eqz v10, :cond_534

    :cond_52e
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_534
    if-ne v8, v4, :cond_58a

    if-eq v1, v7, :cond_540

    const/16 v10, 0x65

    if-eq v1, v10, :cond_540

    const/16 v10, 0x45

    if-ne v1, v10, :cond_58a

    :cond_540
    if-ne v1, v7, :cond_54f

    :cond_542
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_542

    :cond_54f
    const/16 v5, 0x65

    if-eq v1, v5, :cond_55a

    const/16 v5, 0x45

    if-ne v1, v5, :cond_558

    goto :goto_55a

    :cond_558
    :goto_558
    const/4 v5, 0x0

    goto :goto_58a

    :cond_55a
    :goto_55a
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_567

    if-ne v1, v6, :cond_56e

    :cond_567
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    :cond_56e
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_57c

    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.missing.exponent"

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_57c
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_57c

    goto :goto_558

    :cond_58a
    :goto_58a
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    if-ne v8, v4, :cond_5a2

    if-nez v5, :cond_5a2

    :try_start_597
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_59b
    .catch Ljava/lang/NumberFormatException; {:try_start_597 .. :try_end_59b} :catch_59c

    goto :goto_5a6

    :catch_59c
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_5a2
    invoke-static {v1, v3, v8}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    move-result-wide v1

    :goto_5a6
    iput-wide v1, v0, Lorg/mozilla/javascript/TokenStream;->number:D

    const/16 v1, 0x28

    return v1

    nop

    :pswitch_data_5ac
    .packed-switch 0x28
        :pswitch_330  #00000028
        :pswitch_32d  #00000029
        :pswitch_321  #0000002a
        :pswitch_30a  #0000002b
        :pswitch_307  #0000002c
        :pswitch_2d9  #0000002d
        :pswitch_2c2  #0000002e
        :pswitch_25a  #0000002f
    .end packed-switch

    :pswitch_data_5c0
    .packed-switch 0x3a
        :pswitch_24c  #0000003a
        :pswitch_249  #0000003b
        :pswitch_204  #0000003c
        :pswitch_1e8  #0000003d
        :pswitch_1ba  #0000003e
        :pswitch_1b7  #0000003f
    .end packed-switch

    :pswitch_data_5d0
    .packed-switch 0x7b
        :pswitch_1b4  #0000007b
        :pswitch_19f  #0000007c
        :pswitch_19c  #0000007d
        :pswitch_199  #0000007e
    .end packed-switch

    :pswitch_data_5dc
    .packed-switch 0x74
        :pswitch_3fa  #00000074
        :pswitch_3d9  #00000075
        :pswitch_3d5  #00000076
    .end packed-switch
.end method

.method public getTokenBeg()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    return v0
.end method

.method public getTokenEnd()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v0
.end method

.method public getTokenLength()I
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final isNumberBinary()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    return v0
.end method

.method final isNumberHex()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    return v0
.end method

.method final isNumberOctal()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    return v0
.end method

.method final isNumberOldOctal()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    return v0
.end method

.method isXMLAttribute()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    return v0
.end method

.method readAndClearRegExpFlags()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-object v0
.end method

.method readRegExp(I)V
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const-string v2, "msg.unterminated.re.lit"

    const/4 v3, 0x1

    const/16 v4, 0x65

    if-ne p1, v4, :cond_12

    const/16 p1, 0x3d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_37

    :cond_12
    const/16 v4, 0x18

    if-eq p1, v4, :cond_19

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_19
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result p1

    const/16 v4, 0x2a

    if-ne p1, v4, :cond_37

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_37
    :goto_37
    const/4 p1, 0x0

    :goto_38
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_a3

    if-eqz p1, :cond_43

    goto :goto_a3

    :cond_43
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :goto_45
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_45

    :cond_51
    const/16 v2, 0x69

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_45

    :cond_5d
    const/16 v2, 0x6d

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_45

    :cond_69
    const/16 v2, 0x79

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_45

    :cond_75
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.invalid.re.flag"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_8d
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-void

    :cond_a3
    :goto_a3
    const/16 v5, 0xa

    if-eq v4, v5, :cond_e3

    const/4 v6, -0x1

    if-ne v4, v6, :cond_ab

    goto :goto_e3

    :cond_ab
    const/16 v7, 0x5c

    if-ne v4, v7, :cond_d3

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    if-eq v4, v5, :cond_ba

    if-ne v4, v6, :cond_de

    :cond_ba
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_d3
    const/16 v5, 0x5b

    if-ne v4, v5, :cond_d9

    const/4 p1, 0x1

    goto :goto_de

    :cond_d9
    const/16 v5, 0x5d

    if-ne v4, v5, :cond_de

    const/4 p1, 0x0

    :cond_de
    :goto_de
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_38

    :cond_e3
    :goto_e3
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method tokenToString(I)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method
