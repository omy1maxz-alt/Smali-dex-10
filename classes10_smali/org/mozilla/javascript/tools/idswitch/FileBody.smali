.class public Lorg/mozilla/javascript/tools/idswitch/FileBody;
.super Ljava/lang/Object;
.source "FileBody.java"


# instance fields
.field private buffer:[C

.field private bufferEnd:I

.field firstReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

.field lastReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

.field private lineBegin:I

.field private lineEnd:I

.field private lineNumber:I

.field private nextLineStart:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    return-void
.end method

.method private static equals(Ljava/lang/String;[CII)Z
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    :goto_a
    if-eq p2, p3, :cond_1a

    aget-char v1, p1, p2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    return v2
.end method


# virtual methods
.method public getBuffer()[C
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    return-object v0
.end method

.method public getLineBegin()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineBegin:I

    return v0
.end method

.method public getLineEnd()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineEnd:I

    return v0
.end method

.method public getLineNumber()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineNumber:I

    return v0
.end method

.method public nextLine()Z
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLineStart:I

    iget v1, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->bufferEnd:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    iput v2, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineNumber:I

    return v2

    :cond_a
    :goto_a
    iget v1, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->bufferEnd:I

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-eq v0, v1, :cond_1e

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, v4, :cond_1e

    if-ne v2, v3, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1e
    :goto_1e
    iget v5, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLineStart:I

    iput v5, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineBegin:I

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineEnd:I

    const/4 v5, 0x1

    if-ne v0, v1, :cond_2a

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLineStart:I

    goto :goto_3e

    :cond_2a
    if-ne v2, v3, :cond_3b

    add-int/lit8 v2, v0, 0x1

    if-eq v2, v1, :cond_3b

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    aget-char v1, v1, v2

    if-ne v1, v4, :cond_3b

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLineStart:I

    goto :goto_3e

    :cond_3b
    add-int/2addr v0, v5

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLineStart:I

    :goto_3e
    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineNumber:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineNumber:I

    return v5
.end method

.method public readData(Ljava/io/Reader;)V
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_5
    :goto_5
    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    sub-int v4, v0, v2

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-gez v3, :cond_12

    iput v2, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->bufferEnd:I

    return-void

    :cond_12
    add-int/2addr v2, v3

    if-ne v0, v2, :cond_5

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    iget-object v4, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    goto :goto_5
.end method

.method public setReplacement(IILjava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    invoke-static {p3, v0, p1, p2}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->equals(Ljava/lang/String;[CII)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    new-instance v0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;-><init>(IILjava/lang/String;)V

    iget-object p2, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->firstReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    if-nez p2, :cond_18

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lastReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->firstReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    goto :goto_3a

    :cond_18
    iget p3, p2, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->begin:I

    if-ge p1, p3, :cond_21

    iput-object p2, v0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->next:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->firstReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    goto :goto_3a

    :cond_21
    iget-object p3, p2, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->next:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    :goto_23
    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    if-eqz p2, :cond_34

    iget v1, p2, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->begin:I

    if-ge p1, v1, :cond_31

    iput-object p2, v0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->next:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    iput-object v0, p3, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->next:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    goto :goto_34

    :cond_31
    iget-object p3, p2, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->next:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    goto :goto_23

    :cond_34
    :goto_34
    if-nez p2, :cond_3a

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lastReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    iput-object v0, p1, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->next:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    :cond_3a
    :goto_3a
    const/4 p1, 0x1

    return p1
.end method

.method public startLineLoop()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineNumber:I

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLineStart:I

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineEnd:I

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->lineBegin:I

    return-void
.end method

.method public wasModified()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->firstReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public writeData(Ljava/io/Writer;)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->firstReplace:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    const/4 v1, 0x0

    :goto_3
    if-eqz v0, :cond_19

    iget v2, v0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->begin:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_f

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/Writer;->write([CII)V

    :cond_f
    iget-object v1, v0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->replacement:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, v0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->end:I

    iget-object v0, v0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->next:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

    goto :goto_3

    :cond_19
    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->bufferEnd:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_23

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_23
    return-void
.end method

.method public writeInitialData(Ljava/io/Writer;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->buffer:[C

    iget v1, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody;->bufferEnd:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
