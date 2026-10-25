.class public final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private bufSplitPoint:I

.field private charBuf:[C

.field private lastIcIndex:I

.field private lastIcSeq:Ljava/lang/String;

.field private lineNumberOffset:I

.field private newlinePositions:Ljava/util/ArrayList;

.field private readFully:Z

.field private reader:Ljava/io/Reader;

.field private readerPos:I

.field private stringCache:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const p1, 0x8000

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method private bufferUp()V
    .registers 15

    iget-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    if-nez v0, :cond_75

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    if-ge v0, v1, :cond_c

    goto/16 :goto_75

    :cond_c
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    sub-int/2addr v0, v1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    :try_start_18
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/io/Reader;->skip(J)J

    move-result-wide v7

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const v9, 0x8000

    invoke-virtual {v4, v9}, Ljava/io/Reader;->mark(I)V

    const/4 v4, 0x0

    :goto_28
    const/16 v9, 0x400

    const/4 v10, 0x1

    if-gt v4, v9, :cond_40

    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iget-object v11, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    array-length v12, v11

    sub-int/2addr v12, v4

    invoke-virtual {v9, v11, v4, v12}, Ljava/io/Reader;->read([CII)I

    move-result v9

    if-ne v9, v2, :cond_3b

    iput-boolean v10, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    :cond_3b
    if-gtz v9, :cond_3e

    goto :goto_40

    :cond_3e
    add-int/2addr v4, v9

    goto :goto_28

    :cond_40
    :goto_40
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    if-lez v4, :cond_67

    cmp-long v9, v7, v5

    if-nez v9, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v10, 0x0

    :goto_4d
    invoke-static {v10}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    if-eq v0, v2, :cond_5f

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    :cond_5f
    const/16 v0, 0x6000

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_67} :catch_6e

    :cond_67
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    return-void

    :catch_6e
    move-exception v0

    new-instance v1, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v1, v0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_75
    :goto_75
    return-void
.end method

.method private static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .registers 7

    const/16 v0, 0xc

    if-le p3, v0, :cond_a

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_a
    const/4 v0, 0x1

    if-ge p3, v0, :cond_10

    const-string p0, ""

    return-object p0

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    if-ge v0, p3, :cond_1e

    mul-int/lit8 v1, v1, 0x1f

    add-int v2, p2, v0

    aget-char v2, p0, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1e
    and-int/lit16 v0, v1, 0x1ff

    aget-object v1, p1, v0

    if-eqz v1, :cond_2b

    invoke-static {p0, p2, p3, v1}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-object v1

    :cond_2b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    aput-object v1, p1, v0

    return-object v1
.end method

.method private isEmptyNoBufferUp()Z
    .registers 3

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private lineNumIndex(I)I
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1b

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :cond_1b
    return p1
.end method

.method static rangeEquals([CIILjava/lang/String;)Z
    .registers 8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1f

    const/4 v0, 0x0

    :goto_8
    add-int/lit8 v2, p2, -0x1

    if-eqz p2, :cond_1d

    add-int/lit8 p2, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_19

    return v1

    :cond_19
    move p1, p2

    move p2, v2

    move v0, v3

    goto :goto_8

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method private scanBufferForNewlines()V
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_38

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    invoke-direct {p0, v0}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_3a
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_57

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_54

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_57
    return-void
.end method


# virtual methods
.method public advance()V
    .registers 2

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-void
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_12
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_12

    :catchall_a
    move-exception v0

    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    throw v0

    :catch_12
    :goto_12
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    return-void
.end method

.method public columnNumber()I
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v0

    return v0
.end method

.method columnNumber(I)I
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_9
    invoke-direct {p0, p1}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_13
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method consume()C
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    :goto_13
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return v0
.end method

.method consumeAttributeQuoted(Z)Ljava/lang/String;
    .registers 8

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_23

    aget-char v4, v2, v3

    if-eqz v4, :cond_23

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1d

    const/16 v5, 0x26

    if-eq v4, v5, :cond_23

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1a

    goto :goto_20

    :cond_1a
    if-eqz p1, :cond_1d

    goto :goto_23

    :cond_1d
    if-nez p1, :cond_20

    goto :goto_23

    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_23
    :goto_23
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v3, v0, :cond_31

    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    :cond_31
    const-string p1, ""

    :goto_33
    return-object p1
.end method

.method consumeData()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_18

    aget-char v4, v2, v3

    if-eqz v4, :cond_18

    const/16 v5, 0x26

    if-eq v4, v5, :cond_18

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_18

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_18
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v3, v0, :cond_26

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_26
    const-string v0, ""

    :goto_28
    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1c

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    :cond_1c
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeHexSequence()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_17

    const/16 v3, 0x39

    if-le v2, v3, :cond_27

    :cond_17
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x46

    if-le v2, v3, :cond_27

    :cond_1f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x66

    if-gt v2, v3, :cond_2c

    :cond_27
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    :cond_2c
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-le v1, v2, :cond_25

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v1, v2, :cond_25

    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_25
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    :cond_2c
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-le v1, v2, :cond_25

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v1, v2, :cond_25

    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_25
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    const/16 v3, 0x30

    if-lt v1, v3, :cond_45

    const/16 v3, 0x39

    if-gt v1, v3, :cond_45

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_2c

    :cond_45
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeRawData()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_14

    aget-char v4, v2, v3

    if-eqz v4, :cond_14

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_14
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v3, v0, :cond_22

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_22
    const-string v0, ""

    :goto_24
    return-object v0
.end method

.method consumeTagName()Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    move v3, v0

    :goto_a
    if-ge v3, v1, :cond_31

    aget-char v4, v2, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_31

    const/16 v5, 0xa

    if-eq v4, v5, :cond_31

    const/16 v5, 0xc

    if-eq v4, v5, :cond_31

    const/16 v5, 0xd

    if-eq v4, v5, :cond_31

    const/16 v5, 0x20

    if-eq v4, v5, :cond_31

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_31

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_31

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_31

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_31
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v3, v0, :cond_3f

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3f
    const-string v0, ""

    :goto_41
    return-object v0
.end method

.method public consumeTo(C)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v0, v1, v2, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0

    :cond_17
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {p1, v1, v2, v0}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object p1

    :cond_17
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v3, v0, v2

    invoke-static {p1, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object p1
.end method

.method public varargs consumeToAny([C)Ljava/lang/String;
    .registers 10

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    array-length v3, p1

    move v4, v0

    :goto_b
    if-ge v4, v1, :cond_1d

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v3, :cond_1a

    aget-char v6, v2, v4

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_17

    goto :goto_1d

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1d
    :goto_1d
    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v4, v0, :cond_2b

    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v4, v0

    invoke-static {p1, v1, v0, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2b
    const-string p1, ""

    :goto_2d
    return-object p1
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    move v3, v0

    :goto_a
    if-ge v3, v1, :cond_18

    aget-char v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    :goto_18
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v3, v0, :cond_26

    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_26
    const-string p1, ""

    :goto_28
    return-object p1
.end method

.method consumeToEnd()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-lt v0, v4, :cond_15

    return v2

    :cond_15
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v4

    if-le v4, v3, :cond_29

    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    return v2

    :cond_29
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, v3, :cond_34

    const/4 v1, 0x1

    :cond_34
    if-eqz v1, :cond_3a

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int v3, v0, p1

    :cond_3a
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    return v1
.end method

.method public current()C
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    :goto_13
    return v0
.end method

.method cursorPos()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->columnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isTrackNewlines()Z
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public lineNumber()I
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v0

    return v0
.end method

.method lineNumber(I)I
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    return p1

    :cond_12
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    return p1
.end method

.method mark()V
    .registers 3

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    :cond_c
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method matches(C)Z
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method matches(Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_10

    return v2

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_24

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_21

    return v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method varargs matchesAny([C)Z
    .registers 7

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1e

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1e
    return v1
.end method

.method matchesAnySorted([C)Z
    .registers 4

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method matchesAsciiAlpha()Z
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_16

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1e

    :cond_16
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1f

    :cond_1e
    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method matchesDigit()Z
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    const/16 v2, 0x30

    if-lt v0, v2, :cond_17

    const/16 v2, 0x39

    if-gt v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_10

    return v2

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_29

    return v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2c
    const/4 p1, 0x1

    return p1
.end method

.method matchesLetter()Z
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_16

    const/16 v2, 0x5a

    if-le v0, v2, :cond_24

    :cond_16
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1e

    const/16 v2, 0x7a

    if-le v0, v2, :cond_24

    :cond_1e
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method nextIndexOf(C)I
    .registers 4

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_5
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_13

    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, p1

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .registers 10

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_a
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_49

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_21

    :goto_15
    add-int/2addr v1, v3

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_21

    goto :goto_15

    :cond_21
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v5, :cond_47

    if-gt v4, v5, :cond_47

    move v5, v2

    :goto_30
    if-ge v5, v4, :cond_41

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_41

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_41
    if-ne v5, v4, :cond_47

    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, p1

    return v1

    :cond_47
    move v1, v2

    goto :goto_a

    :cond_49
    const/4 p1, -0x1

    return p1
.end method

.method public pos()I
    .registers 3

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method readFully()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    return v0
.end method

.method rewindToMark()V
    .registers 4

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->unmark()V

    return-void

    :cond_b
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v2, v0, v1

    if-gez v2, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public trackNewlines(Z)V
    .registers 3

    if-eqz p1, :cond_13

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    if-nez v0, :cond_13

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x199

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    goto :goto_18

    :cond_13
    if-nez p1, :cond_18

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    :cond_18
    :goto_18
    return-void
.end method

.method unconsume()V
    .registers 4

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-void

    :cond_9
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method unmark()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    return-void
.end method
