.class public Lorg/mozilla/javascript/json/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cx:Lorg/mozilla/javascript/Context;

.field private length:I

.field private pos:I

.field private scope:Lorg/mozilla/javascript/Scriptable;

.field private src:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    iput-object p2, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method private consume(C)V
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    const-string v2, "Expected "

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_18

    return-void

    :cond_18
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " but reached end of stream"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeWhitespace()V
    .registers 3

    :goto_0
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    return-void

    :cond_1d
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    goto :goto_0

    :cond_24
    return-void
.end method

.method private static fromHex(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    goto :goto_20

    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_16

    const/16 v1, 0x46

    if-gt p0, v1, :cond_16

    :goto_12
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    goto :goto_20

    :cond_16
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1f

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 p0, -0x1

    :goto_20
    return p0
.end method

.method private nextOrNumberError(I)C
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v0, v1, :cond_11

    iget-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_11
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/json/JsonParser;->numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;

    move-result-object p1

    throw p1
.end method

.method private numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported number format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readArray()Ljava/lang/Object;
    .registers 9

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    const/16 v2, 0x5d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_23

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_29
    iget v5, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v6, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v5, v6, :cond_7c

    iget-object v6, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    const-string v7, "Unexpected comma in array literal"

    if-eq v5, v6, :cond_6a

    if-eq v5, v2, :cond_50

    if-nez v1, :cond_48

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_72

    :cond_48
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Missing comma in array literal"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    if-eqz v1, :cond_64

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :cond_64
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    invoke-direct {v0, v7}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    if-eqz v1, :cond_76

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    const/4 v1, 0x0

    :goto_72
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    goto :goto_29

    :cond_76
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    invoke-direct {v0, v7}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unterminated array literal"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method private readDigits()V
    .registers 3

    :goto_0
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1c

    const/16 v1, 0x39

    if-le v0, v1, :cond_15

    goto :goto_1c

    :cond_15
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    goto :goto_0

    :cond_1c
    :goto_1c
    return-void
.end method

.method private readFalse()Ljava/lang/Boolean;
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_44

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_44

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_44
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unexpected token: f"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readNull()Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sub-int/2addr v0, v1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_33

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_33

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    const/4 v0, 0x0

    return-object v0

    :cond_33
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unexpected token: n"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readNumber(C)Ljava/lang/Number;
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x2d

    const/16 v2, 0x39

    const/16 v3, 0x30

    if-ne p1, v1, :cond_1c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->nextOrNumberError(I)C

    move-result p1

    if-lt p1, v3, :cond_15

    if-gt p1, v2, :cond_15

    goto :goto_1c

    :cond_15
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/json/JsonParser;->numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;

    move-result-object p1

    throw p1

    :cond_1c
    :goto_1c
    if-eq p1, v3, :cond_21

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readDigits()V

    :cond_21
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge p1, v4, :cond_4a

    iget-object v4, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v4, 0x2e

    if-ne p1, v4, :cond_4a

    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->nextOrNumberError(I)C

    move-result p1

    if-lt p1, v3, :cond_43

    if-gt p1, v2, :cond_43

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readDigits()V

    goto :goto_4a

    :cond_43
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/json/JsonParser;->numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;

    move-result-object p1

    throw p1

    :cond_4a
    :goto_4a
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge p1, v4, :cond_81

    iget-object v4, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v4, 0x65

    if-eq p1, v4, :cond_5e

    const/16 v4, 0x45

    if-ne p1, v4, :cond_81

    :cond_5e
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->nextOrNumberError(I)C

    move-result p1

    if-eq p1, v1, :cond_6e

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_72

    :cond_6e
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->nextOrNumberError(I)C

    move-result p1

    :cond_72
    if-lt p1, v3, :cond_7a

    if-gt p1, v2, :cond_7a

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readDigits()V

    goto :goto_81

    :cond_7a
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/json/JsonParser;->numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;

    move-result-object p1

    throw p1

    :cond_81
    :goto_81
    iget-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-double v2, p1

    cmpl-double v4, v2, v0

    if-nez v4, :cond_98

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_98
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private readObject()Ljava/lang/Object;
    .registers 12

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    const/16 v3, 0x7d

    const/4 v4, 0x1

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_22

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    return-object v0

    :cond_22
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    iget v5, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v6, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v5, v6, :cond_89

    iget-object v6, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_5b

    const/16 v6, 0x2c

    const-string v7, "Unexpected comma in object literal"

    if-eq v5, v6, :cond_51

    if-ne v5, v3, :cond_49

    if-eqz v2, :cond_43

    return-object v0

    :cond_43
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    invoke-direct {v0, v7}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unexpected token in object literal"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    if-eqz v2, :cond_55

    const/4 v2, 0x0

    goto :goto_7d

    :cond_55
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    invoke-direct {v0, v7}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    if-nez v2, :cond_81

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3a

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/json/JsonParser;->consume(C)V

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->indexFromString(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_78

    invoke-interface {v0, v2, v0, v5}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_7c

    :cond_78
    long-to-int v2, v6

    invoke-interface {v0, v2, v0, v5}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_7c
    const/4 v2, 0x1

    :goto_7d
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    goto :goto_24

    :cond_81
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Missing comma in object literal"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unterminated object literal"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw v0

    :goto_92
    goto :goto_91
.end method

.method private readString()Ljava/lang/String;
    .registers 11

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    const-string v3, "String contains control character"

    const/16 v4, 0x1f

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-ge v1, v2, :cond_32

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-le v1, v4, :cond_2c

    if-ne v1, v6, :cond_1f

    goto :goto_32

    :cond_1f
    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_37
    :goto_37
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v2, v7, :cond_182

    iget-object v7, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v7, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v0, v2, :cond_17a

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v7, v0, 0x1

    iput v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_149

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_145

    if-eq v0, v6, :cond_141

    const/16 v2, 0x62

    const/16 v7, 0x8

    if-eq v0, v2, :cond_13d

    const/16 v2, 0x66

    const/16 v8, 0xc

    if-eq v0, v2, :cond_139

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_133

    const/16 v2, 0x72

    if-eq v0, v2, :cond_12d

    const/16 v2, 0x74

    if-eq v0, v2, :cond_127

    const/16 v2, 0x75

    if-ne v0, v2, :cond_10b

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sub-int/2addr v0, v2

    const/4 v9, 0x5

    if-lt v0, v9, :cond_ec

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/json/JsonParser;->fromHex(C)I

    move-result v0

    shl-int/2addr v0, v8

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v8, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/json/JsonParser;->fromHex(C)I

    move-result v2

    shl-int/2addr v2, v7

    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/json/JsonParser;->fromHex(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/json/JsonParser;->fromHex(C)I

    move-result v2

    or-int/2addr v0, v2

    if-ltz v0, :cond_cb

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_14c

    :cond_cb
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ec
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character code: \\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10b
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected character in string: \'\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_127
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14c

    :cond_12d
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14c

    :cond_133
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14c

    :cond_139
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14c

    :cond_13d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14c

    :cond_141
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14c

    :cond_145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14c

    :cond_149
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_14c
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    :cond_14e
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v2, v7, :cond_37

    iget-object v7, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le v2, v4, :cond_174

    if-ne v2, v6, :cond_164

    goto/16 :goto_37

    :cond_164
    if-ne v2, v5, :cond_14e

    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_174
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    invoke-direct {v0, v3}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17a
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unterminated string"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_182
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unterminated string literal"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    goto :goto_18b

    :goto_18a
    throw v0

    :goto_18b
    goto :goto_18a
.end method

.method private readTrue()Ljava/lang/Boolean;
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sub-int/2addr v0, v1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_36

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_36

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_36
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unexpected token: t"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readValue()Ljava/lang/Object;
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v0, v1, :cond_6c

    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_67

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_62

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_5d

    const/16 v1, 0x66

    if-eq v0, v1, :cond_58

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_53

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4e

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_49

    packed-switch v0, :pswitch_data_74

    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4e
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readTrue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_53
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_58
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readFalse()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_5d
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_62
    :pswitch_62  #0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->readNumber(C)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_67
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6c
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Empty JSON string"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_74
    .packed-switch 0x30
        :pswitch_62  #00000030
        :pswitch_62  #00000031
        :pswitch_62  #00000032
        :pswitch_62  #00000033
        :pswitch_62  #00000034
        :pswitch_62  #00000035
        :pswitch_62  #00000036
        :pswitch_62  #00000037
        :pswitch_62  #00000038
        :pswitch_62  #00000039
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_38

    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iput-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_36

    if-lt v0, v1, :cond_1d

    monitor-exit p0

    return-object p1

    :cond_1d
    :try_start_1d
    new-instance p1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected end of stream at char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_36
    move-exception p1

    goto :goto_40

    :cond_38
    new-instance p1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v0, "Input string may not be null"

    invoke-direct {p1, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_36

    :goto_40
    monitor-exit p0

    throw p1
.end method
