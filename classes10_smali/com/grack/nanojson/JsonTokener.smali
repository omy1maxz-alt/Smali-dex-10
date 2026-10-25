.class final Lcom/grack/nanojson/JsonTokener;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BUFFER_ROOM:I = 0x100

.field static final BUFFER_SIZE:I = 0x8000

.field static final FALSE:[C

.field static final MAX_ESCAPE:I = 0x5

.field static final NULL:[C

.field static final TOKEN_ARRAY_END:I = 0x4

.field static final TOKEN_ARRAY_START:I = 0xb

.field static final TOKEN_COLON:I = 0x2

.field static final TOKEN_COMMA:I = 0x1

.field static final TOKEN_EOF:I = 0x0

.field static final TOKEN_FALSE:I = 0x7

.field static final TOKEN_NULL:I = 0x5

.field static final TOKEN_NUMBER:I = 0x9

.field static final TOKEN_OBJECT_END:I = 0x3

.field static final TOKEN_OBJECT_START:I = 0xa

.field static final TOKEN_SEMI_STRING:I = 0xc

.field static final TOKEN_STRING:I = 0x8

.field static final TOKEN_TRUE:I = 0x6

.field static final TOKEN_VALUE_MIN:I = 0x5

.field static final TRUE:[C


# instance fields
.field private final buffer:[C

.field private bufferLength:I

.field private charOffset:I

.field private eof:Z

.field protected index:I

.field protected isDouble:Z

.field private linePos:I

.field private final reader:Ljava/io/Reader;

.field protected reusableBuffer:Ljava/lang/StringBuilder;

.field private rowPos:I

.field private tokenCharOffset:I

.field private tokenCharPos:I

.field private final utf8:Z

.field private utf8adjust:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_18

    sput-object v1, Lcom/grack/nanojson/JsonTokener;->TRUE:[C

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_20

    sput-object v1, Lcom/grack/nanojson/JsonTokener;->FALSE:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_28

    sput-object v0, Lcom/grack/nanojson/JsonTokener;->NULL:[C

    return-void

    :array_18
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_20
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_28
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    const v1, 0x8000

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_23

    instance-of v1, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    :cond_23
    :goto_23
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    :try_start_27
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/16 v4, 0xef

    const/4 v5, 0x2

    if-ne v3, v4, :cond_68

    aget v3, v1, v0

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_68

    aget v3, v1, v5

    const/16 v4, 0xbf

    if-ne v3, v4, :cond_68

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    new-instance v1, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->init()V

    return-void

    :cond_68
    aget v3, v1, v2
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_6a} :catch_130

    const-string v4, "UTF-32BE"

    const/16 v6, 0xfe

    const/16 v7, 0xff

    const/4 v8, 0x3

    if-nez v3, :cond_85

    :try_start_73
    aget v3, v1, v0

    if-nez v3, :cond_85

    aget v3, v1, v5

    if-ne v3, v6, :cond_85

    aget v3, v1, v8

    if-ne v3, v7, :cond_85

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_113

    :cond_85
    aget v3, v1, v2
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_87} :catch_130

    const-string v9, "UTF-32LE"

    if-ne v3, v7, :cond_9d

    :try_start_8b
    aget v3, v1, v0

    if-ne v3, v6, :cond_9d

    aget v3, v1, v5

    if-nez v3, :cond_9d

    aget v3, v1, v8

    if-nez v3, :cond_9d

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_113

    :cond_9d
    aget v3, v1, v2

    if-ne v3, v6, :cond_b2

    aget v3, v1, v0

    if-ne v3, v7, :cond_b2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :goto_aa
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    goto/16 :goto_113

    :cond_b2
    aget v3, v1, v2

    if-ne v3, v7, :cond_c0

    aget v3, v1, v0

    if-ne v3, v6, :cond_c0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_aa

    :cond_c0
    aget v3, v1, v2

    if-nez v3, :cond_d8

    aget v3, v1, v0

    if-nez v3, :cond_d8

    aget v3, v1, v5

    if-nez v3, :cond_d8

    aget v3, v1, v8

    if-eqz v3, :cond_d8

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_d4
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_113

    :cond_d8
    aget v3, v1, v2

    if-eqz v3, :cond_ed

    aget v3, v1, v0

    if-nez v3, :cond_ed

    aget v3, v1, v5

    if-nez v3, :cond_ed

    aget v3, v1, v8

    if-nez v3, :cond_ed

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_d4

    :cond_ed
    aget v3, v1, v2

    if-nez v3, :cond_100

    aget v3, v1, v0

    if-eqz v3, :cond_100

    aget v3, v1, v5

    if-nez v3, :cond_100

    aget v3, v1, v8

    if-eqz v3, :cond_100

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    goto :goto_d4

    :cond_100
    aget v3, v1, v2

    if-eqz v3, :cond_120

    aget v3, v1, v0

    if-nez v3, :cond_120

    aget v3, v1, v5

    if-eqz v3, :cond_120

    aget v1, v1, v8

    if-nez v1, :cond_120

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    goto :goto_d4

    :goto_113
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iput-boolean v2, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->init()V

    return-void

    :cond_120
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    new-instance v1, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->init()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_12f} :catch_130

    return-void

    :catch_130
    move-exception v0

    move-object p1, v0

    move-object v1, p1

    new-instance v0, Lcom/grack/nanojson/JsonParserException;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "IOException while detecting charset"

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    throw v0
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    const v0, 0x8000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->init()V

    return-void
.end method

.method private advanceChar()I
    .registers 4

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_22

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    :cond_22
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-lt v1, v2, :cond_34

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    :cond_34
    return v0
.end method

.method private consumeTokenStringUtf8Char(C)V
    .registers 9

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    and-int/lit16 v1, p1, 0xf0

    const-string v2, "Illegal UTF-8 byte: 0x"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_20c

    goto/16 :goto_1fd

    :sswitch_f
    and-int/lit8 v1, p1, 0xf

    if-ge v1, v0, :cond_127

    and-int/lit8 v0, p1, 0xc

    shr-int/lit8 v0, v0, 0x2

    const-string v1, " in a Java string"

    const-string v2, "Unable to represent codepoint 0x"

    packed-switch v0, :pswitch_data_22e

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Impossible"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_26  #0x3
    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1e

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x12

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :pswitch_91  #0x2
    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x18

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x12

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :pswitch_ed  #0x0, 0x1
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x12

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    add-int/lit8 p1, p1, 0x3

    goto/16 :goto_1c0

    :cond_127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_143
    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    int-to-char p1, p1

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    const v0, 0xd800

    if-lt p1, v0, :cond_174

    const v0, 0xdbff

    if-le p1, v0, :cond_17f

    :cond_174
    const v0, 0xdc00

    if-lt p1, v0, :cond_19b

    const v0, 0xdfff

    if-le p1, v0, :cond_17f

    goto :goto_19b

    :cond_17f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal UTF-8 codepoint: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_19b
    :goto_19b
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1fd

    :sswitch_1a1
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_1c3

    :sswitch_1a5
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    int-to-char p1, p1

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    add-int/lit8 p1, p1, 0x1

    :goto_1c0
    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    goto :goto_1fd

    :cond_1c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_1df
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal UTF-8 continuation byte: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :goto_1fd
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-gt p1, v0, :cond_204

    return-void

    :cond_204
    const-string p1, "UTF-8 codepoint was truncated"

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    nop

    :sswitch_data_20c
    .sparse-switch
        0x80 -> :sswitch_1df
        0x90 -> :sswitch_1df
        0xa0 -> :sswitch_1df
        0xb0 -> :sswitch_1df
        0xc0 -> :sswitch_1a1
        0xd0 -> :sswitch_1a5
        0xe0 -> :sswitch_143
        0xf0 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_22e
    .packed-switch 0x0
        :pswitch_ed  #00000000
        :pswitch_ed  #00000001
        :pswitch_91  #00000002
        :pswitch_26  #00000003
    .end packed-switch
.end method

.method private consumeWhitespace()V
    .registers 7

    :cond_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_36

    iget-object v4, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_1b
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2e

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    :cond_2e
    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_36
    if-gtz v0, :cond_0

    iput-boolean v3, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    return-void
.end method

.method private init()V
    .registers 2

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->consumeWhitespace()V

    return-void
.end method

.method private isDigitCharacter(I)Z
    .registers 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_1f

    :cond_8
    const/16 v0, 0x65

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x45

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method private peekChar()I
    .registers 3

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    :goto_c
    return v0
.end method

.method private refillBuffer()Z
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget-object v3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_10

    return v0

    :cond_10
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iget v3, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1c

    return v4

    :catch_1c
    move-exception v1

    const-string v2, "IOException"

    invoke-virtual {p0, v1, v2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method private stringChar()C
    .registers 4

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_11

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonTokener;->throwControlCharacterException(C)V

    :cond_11
    return v0
.end method

.method private throwControlCharacterException(C)V
    .registers 5

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ne p1, v0, :cond_16

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strings may not contain control characters: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method advanceCharFast()I
    .registers 4

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    :cond_1c
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    return v0
.end method

.method advanceToToken(Z)I
    .registers 8

    :goto_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->advanceChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharOffset:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_c2

    if-eqz p1, :cond_9d

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    :goto_30
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->consumeTokenSemiString()V

    goto/16 :goto_9c

    :sswitch_35
    const/4 v4, 0x3

    goto/16 :goto_9c

    :sswitch_38
    const/16 v4, 0xa

    goto/16 :goto_9c

    :sswitch_3c
    int-to-char v0, v0

    :try_start_3d
    sget-object v2, Lcom/grack/nanojson/JsonTokener;->TRUE:[C

    invoke-virtual {p0, v0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_42
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_3d .. :try_end_42} :catch_44

    const/4 v4, 0x6

    goto :goto_9c

    :catch_44
    move-exception v0

    if-eqz p1, :cond_4b

    :goto_47
    sub-int/2addr v1, v5

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    goto :goto_30

    :cond_4b
    throw v0

    :sswitch_4c
    int-to-char v0, v0

    :try_start_4d
    sget-object v2, Lcom/grack/nanojson/JsonTokener;->NULL:[C

    invoke-virtual {p0, v0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_52
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_4d .. :try_end_52} :catch_54

    const/4 v4, 0x5

    goto :goto_9c

    :catch_54
    move-exception v0

    if-eqz p1, :cond_58

    goto :goto_47

    :cond_58
    throw v0

    :sswitch_59
    int-to-char v0, v0

    :try_start_5a
    sget-object v2, Lcom/grack/nanojson/JsonTokener;->FALSE:[C

    invoke-virtual {p0, v0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_5f
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_5a .. :try_end_5f} :catch_61

    const/4 v4, 0x7

    goto :goto_9c

    :catch_61
    move-exception v0

    if-eqz p1, :cond_65

    goto :goto_47

    :cond_65
    throw v0

    :sswitch_66
    const/4 v4, 0x4

    goto :goto_9c

    :sswitch_68
    const/16 v4, 0xb

    goto :goto_9c

    :sswitch_6b
    const/4 v4, 0x2

    goto :goto_9c

    :sswitch_6d
    int-to-char p1, v0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonTokener;->consumeTokenNumber(C)V

    const/16 v4, 0x9

    goto :goto_9c

    :sswitch_74
    move v4, v5

    goto :goto_9c

    :sswitch_76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numbers may not start with \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_95
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->consumeTokenString(I)V

    const/16 v4, 0x8

    goto :goto_9c

    :sswitch_9b
    return v2

    :goto_9c
    return v4

    :cond_9d
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->isAsciiLetter(I)Z

    move-result p1

    if-eqz p1, :cond_a9

    int-to-char p1, v0

    invoke-virtual {p0, p1, v3, v2}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_a9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_data_c2
    .sparse-switch
        -0x1 -> :sswitch_9b
        0x22 -> :sswitch_95
        0x27 -> :sswitch_95
        0x2b -> :sswitch_76
        0x2c -> :sswitch_74
        0x2d -> :sswitch_6d
        0x2e -> :sswitch_76
        0x30 -> :sswitch_6d
        0x31 -> :sswitch_6d
        0x32 -> :sswitch_6d
        0x33 -> :sswitch_6d
        0x34 -> :sswitch_6d
        0x35 -> :sswitch_6d
        0x36 -> :sswitch_6d
        0x37 -> :sswitch_6d
        0x38 -> :sswitch_6d
        0x39 -> :sswitch_6d
        0x3a -> :sswitch_6b
        0x5b -> :sswitch_68
        0x5d -> :sswitch_66
        0x66 -> :sswitch_59
        0x6e -> :sswitch_4c
        0x74 -> :sswitch_3c
        0x7b -> :sswitch_38
        0x7d -> :sswitch_35
    .end sparse-switch
.end method

.method consumeKeyword(C[C)V
    .registers 7

    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v0

    array-length v1, p2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_33

    :goto_9
    array-length v0, p2

    if-ge v2, v0, :cond_22

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    aget-char v1, p2, v2

    if-ne v0, v1, :cond_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1d
    invoke-virtual {p0, p1, p2, v2}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_22
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->peekChar()I

    move-result v0

    sparse-switch v0, :sswitch_data_38

    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_32
    return-void

    :cond_33
    invoke-virtual {p0, p1, p2, v2}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_data_38
    .sparse-switch
        0x9 -> :sswitch_32
        0xa -> :sswitch_32
        0xd -> :sswitch_32
        0x20 -> :sswitch_32
        0x2c -> :sswitch_32
        0x3a -> :sswitch_32
        0x5b -> :sswitch_32
        0x5d -> :sswitch_32
        0x7b -> :sswitch_32
        0x7d -> :sswitch_32
    .end sparse-switch
.end method

.method consumeTokenNumber(C)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iput-boolean v3, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x30

    const/4 v6, 0x1

    const/16 v7, 0x2d

    if-ne v1, v7, :cond_1c

    move v8, v6

    goto :goto_21

    :cond_1c
    if-ne v1, v5, :cond_20

    move v8, v2

    goto :goto_21

    :cond_20
    move v8, v4

    :cond_21
    :goto_21
    const/16 v9, 0x100

    invoke-virtual {v0, v9}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v9

    const-string v10, "Malformed number: "

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x5

    if-nez v9, :cond_30

    goto :goto_3f

    :cond_30
    move v14, v3

    :goto_31
    if-ge v14, v9, :cond_21

    iget-object v15, v0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v3, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v3, v15, v3

    invoke-direct {v0, v3}, Lcom/grack/nanojson/JsonTokener;->isDigitCharacter(I)Z

    move-result v15

    if-nez v15, :cond_6a

    :goto_3f
    if-eq v8, v4, :cond_60

    if-eq v8, v2, :cond_60

    if-eq v8, v13, :cond_60

    if-ne v8, v12, :cond_48

    goto :goto_60

    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v6}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v1

    throw v1

    :cond_60
    :goto_60
    if-ne v8, v2, :cond_66

    if-ne v1, v7, :cond_66

    iput-boolean v6, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    :cond_66
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_6a
    const/16 v15, 0x45

    const/16 v2, 0x65

    const/4 v11, 0x6

    const/16 v12, 0x39

    packed-switch v8, :pswitch_data_f2

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Impossible"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_7c  #0x8
    if-lt v3, v5, :cond_c2

    if-gt v3, v12, :cond_c2

    :goto_80
    const/16 v8, 0x8

    goto :goto_c3

    :pswitch_83  #0x6, 0x7
    const/16 v2, 0x2b

    if-eq v3, v2, :cond_91

    if-ne v3, v7, :cond_8c

    if-ne v8, v11, :cond_8c

    goto :goto_91

    :cond_8c
    if-lt v3, v5, :cond_c2

    if-gt v3, v12, :cond_c2

    goto :goto_80

    :cond_91
    :goto_91
    const/4 v2, 0x7

    :goto_92
    move v8, v2

    goto :goto_c3

    :pswitch_94  #0x4, 0x5
    if-lt v3, v5, :cond_9a

    if-gt v3, v12, :cond_9a

    move v8, v13

    goto :goto_c3

    :cond_9a
    if-eq v3, v2, :cond_9e

    if-ne v3, v15, :cond_c2

    :cond_9e
    if-ne v8, v13, :cond_c2

    goto :goto_b4

    :pswitch_a1  #0x2, 0x3
    if-lt v3, v5, :cond_a8

    if-gt v3, v12, :cond_a8

    if-ne v8, v4, :cond_a8

    goto :goto_c0

    :cond_a8
    const/16 v8, 0x2e

    if-ne v3, v8, :cond_b0

    iput-boolean v6, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    const/4 v2, 0x4

    goto :goto_92

    :cond_b0
    if-eq v3, v2, :cond_b4

    if-ne v3, v15, :cond_c2

    :cond_b4
    :goto_b4
    iput-boolean v6, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    move v8, v11

    goto :goto_c3

    :pswitch_b8  #0x1
    if-ne v3, v5, :cond_bc

    const/4 v8, 0x3

    goto :goto_c3

    :cond_bc
    if-le v3, v5, :cond_c2

    if-gt v3, v12, :cond_c2

    :goto_c0
    move v8, v4

    goto :goto_c3

    :cond_c2
    const/4 v8, -0x1

    :goto_c3
    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    const/4 v2, -0x1

    if-eq v8, v2, :cond_d9

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    goto/16 :goto_31

    :cond_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v6}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v1

    throw v1

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_b8  #00000001
        :pswitch_a1  #00000002
        :pswitch_a1  #00000003
        :pswitch_94  #00000004
        :pswitch_94  #00000005
        :pswitch_83  #00000006
        :pswitch_83  #00000007
        :pswitch_7c  #00000008
    .end packed-switch
.end method

.method consumeTokenSemiString()V
    .registers 14

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_6
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    const-string v3, "String was not terminated before end of input"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1b1

    move v6, v1

    :goto_13
    if-ge v6, v2, :cond_1a5

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    move-result v7

    invoke-virtual {p0, v7}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    move-result v8

    if-nez v8, :cond_196

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_25

    goto/16 :goto_196

    :cond_25
    const/16 v8, 0x5c

    const-string v9, "Invalid character in semi-string: "

    if-eq v7, v8, :cond_61

    iget-boolean v8, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    if-eqz v8, :cond_34

    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_34

    goto :goto_61

    :cond_34
    const/16 v8, 0x5b

    if-eq v7, v8, :cond_4b

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_4b

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_4b

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_4b

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_4b

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v8, v6

    sub-int/2addr v8, v5

    invoke-virtual {v2, v7, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    :goto_71
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    if-eqz v2, :cond_191

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v6, v2

    :goto_7a
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    const-string v7, "EOF encountered in the middle of a string escape"

    if-ge v2, v6, :cond_180

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    move-result v2

    iget-boolean v8, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    if-eqz v8, :cond_90

    and-int/lit16 v8, v2, 0x80

    if-eqz v8, :cond_90

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeTokenStringUtf8Char(C)V

    goto :goto_71

    :cond_90
    sparse-switch v2, :sswitch_data_1b6

    goto/16 :goto_15f

    :sswitch_95
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int v2, v6, v2

    const/4 v8, 0x5

    if-ge v2, v8, :cond_b9

    invoke-virtual {p0, v8}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v6, v2

    iget-object v10, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v11, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v10, v10, v11

    const/16 v11, 0x75

    if-ne v10, v11, :cond_b9

    if-lt v2, v8, :cond_b0

    goto :goto_b9

    :cond_b0
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    invoke-virtual {p0, v4, v7, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_b9
    :goto_b9
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v7, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v2, v2, v7

    const/16 v7, 0xa

    sparse-switch v2, :sswitch_data_1e4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid escape: \\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :sswitch_e0
    move v2, v1

    move v8, v2

    :goto_e2
    const/4 v10, 0x4

    if-ge v2, v10, :cond_140

    shl-int/lit8 v8, v8, 0x4

    iget-object v10, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v11, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v10, v10, v11

    const/16 v11, 0x30

    if-lt v10, v11, :cond_fd

    const/16 v11, 0x39

    if-gt v10, v11, :cond_fd

    add-int/lit8 v10, v10, -0x30

    :goto_fb
    or-int/2addr v8, v10

    goto :goto_114

    :cond_fd
    const/16 v11, 0x41

    if-lt v10, v11, :cond_109

    const/16 v11, 0x46

    if-gt v10, v11, :cond_109

    add-int/lit8 v10, v10, -0x41

    :goto_107
    add-int/2addr v10, v7

    goto :goto_fb

    :cond_109
    const/16 v11, 0x61

    if-lt v10, v11, :cond_117

    const/16 v11, 0x66

    if-gt v10, v11, :cond_117

    add-int/lit8 v10, v10, -0x61

    goto :goto_107

    :goto_114
    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    :cond_117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected unicode hex escape character: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_140
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    int-to-char v7, v8

    goto :goto_15a

    :sswitch_144
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    goto :goto_15a

    :sswitch_149
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0xd

    goto :goto_15a

    :sswitch_14e
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    goto :goto_15a

    :sswitch_151
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    goto :goto_15a

    :sswitch_156
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x8

    :goto_15a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7a

    :goto_15f
    :sswitch_15f
    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7a

    :sswitch_166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :sswitch_17c
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_180
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-gt v2, v6, :cond_188

    goto/16 :goto_71

    :cond_188
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    invoke-virtual {p0, v4, v7, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_191
    invoke-virtual {p0, v4, v3, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_196
    :goto_196
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v5

    invoke-virtual {v0, v1, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_1a5
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1b1
    invoke-virtual {p0, v4, v3, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :sswitch_data_1b6
    .sparse-switch
        0x9 -> :sswitch_17c
        0xa -> :sswitch_17c
        0xd -> :sswitch_17c
        0x20 -> :sswitch_17c
        0x2c -> :sswitch_166
        0x3a -> :sswitch_17c
        0x5b -> :sswitch_166
        0x5c -> :sswitch_95
        0x5d -> :sswitch_166
        0x7b -> :sswitch_166
        0x7d -> :sswitch_166
    .end sparse-switch

    :sswitch_data_1e4
    .sparse-switch
        0x22 -> :sswitch_15f
        0x2f -> :sswitch_15f
        0x5c -> :sswitch_15f
        0x62 -> :sswitch_156
        0x66 -> :sswitch_151
        0x6e -> :sswitch_14e
        0x72 -> :sswitch_149
        0x74 -> :sswitch_144
        0x75 -> :sswitch_e0
    .end sparse-switch
.end method

.method consumeTokenString(I)V
    .registers 14

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_6
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    const-string v3, "String was not terminated before end of input"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_167

    move v6, v1

    :goto_13
    if-ge v6, v2, :cond_15b

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    move-result v7

    if-ne v7, p1, :cond_2a

    iget-object p1, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v5

    invoke-virtual {p1, v0, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_2a
    const/16 v8, 0x5c

    if-eq v7, v8, :cond_3a

    iget-boolean v8, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    if-eqz v8, :cond_37

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_37

    goto :goto_3a

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_3a
    :goto_3a
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v8, v6

    sub-int/2addr v8, v5

    invoke-virtual {v2, v7, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    :goto_4a
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    if-eqz v2, :cond_156

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v6, v2

    :goto_53
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    const-string v7, "EOF encountered in the middle of a string escape"

    if-ge v2, v6, :cond_145

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    move-result v2

    iget-boolean v8, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    if-eqz v8, :cond_69

    and-int/lit16 v8, v2, 0x80

    if-eqz v8, :cond_69

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeTokenStringUtf8Char(C)V

    goto :goto_4a

    :cond_69
    sparse-switch v2, :sswitch_data_16c

    goto/16 :goto_138

    :sswitch_6e
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int v2, v6, v2

    const/4 v8, 0x5

    if-ge v2, v8, :cond_92

    invoke-virtual {p0, v8}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v6, v2

    iget-object v9, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v10, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v9, v9, v10

    const/16 v10, 0x75

    if-ne v9, v10, :cond_92

    if-lt v2, v8, :cond_89

    goto :goto_92

    :cond_89
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    invoke-virtual {p0, v4, v7, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_92
    :goto_92
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v7, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v2, v2, v7

    const/16 v7, 0xa

    sparse-switch v2, :sswitch_data_17a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid escape: \\"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_b9
    move v2, v1

    move v8, v2

    :goto_bb
    const/4 v9, 0x4

    if-ge v2, v9, :cond_119

    shl-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v10, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v9, v9, v10

    const/16 v10, 0x30

    if-lt v9, v10, :cond_d6

    const/16 v10, 0x39

    if-gt v9, v10, :cond_d6

    add-int/lit8 v9, v9, -0x30

    :goto_d4
    or-int/2addr v8, v9

    goto :goto_ed

    :cond_d6
    const/16 v10, 0x41

    if-lt v9, v10, :cond_e2

    const/16 v10, 0x46

    if-gt v9, v10, :cond_e2

    add-int/lit8 v9, v9, -0x41

    :goto_e0
    add-int/2addr v9, v7

    goto :goto_d4

    :cond_e2
    const/16 v10, 0x61

    if-lt v9, v10, :cond_f0

    const/16 v10, 0x66

    if-gt v9, v10, :cond_f0

    add-int/lit8 v9, v9, -0x61

    goto :goto_e0

    :goto_ed
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    :cond_f0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected unicode hex escape character: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-char v0, v9

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_119
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    int-to-char v7, v8

    goto :goto_133

    :sswitch_11d
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    goto :goto_133

    :sswitch_122
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0xd

    goto :goto_133

    :sswitch_127
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    goto :goto_133

    :sswitch_12a
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    goto :goto_133

    :sswitch_12f
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x8

    :goto_133
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    :cond_138
    :goto_138
    :sswitch_138
    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    :sswitch_13f
    if-ne v2, p1, :cond_138

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_145
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-gt v2, v6, :cond_14d

    goto/16 :goto_4a

    :cond_14d
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    invoke-virtual {p0, v4, v7, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_156
    invoke-virtual {p0, v4, v3, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_15b
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_167
    invoke-virtual {p0, v4, v3, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_data_16c
    .sparse-switch
        0x22 -> :sswitch_13f
        0x27 -> :sswitch_13f
        0x5c -> :sswitch_6e
    .end sparse-switch

    :sswitch_data_17a
    .sparse-switch
        0x22 -> :sswitch_138
        0x27 -> :sswitch_138
        0x2f -> :sswitch_138
        0x5c -> :sswitch_138
        0x62 -> :sswitch_12f
        0x66 -> :sswitch_12a
        0x6e -> :sswitch_127
        0x72 -> :sswitch_122
        0x74 -> :sswitch_11d
        0x75 -> :sswitch_b9
    .end sparse-switch
.end method

.method createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    if-nez p2, :cond_11

    move-object v3, v2

    goto :goto_17

    :cond_11
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, p3}, Ljava/lang/String;-><init>([CII)V

    :goto_17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_22
    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->peekChar()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/grack/nanojson/JsonTokener;->isAsciiLetter(I)Z

    move-result p3

    if-eqz p3, :cond_3d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v1, 0xf

    if-ge p3, v1, :cond_3d

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->advanceChar()I

    move-result p3

    int-to-char p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_3d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-nez p2, :cond_55

    goto :goto_77

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ". Did you mean \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_77
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    return-object p1
.end method

.method createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;
    .registers 13

    const-string v0, ", char "

    const-string v1, " on line "

    if-eqz p3, :cond_34

    new-instance v2, Lcom/grack/nanojson/JsonParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    iget v7, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharOffset:I

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    return-object v2

    :cond_34
    move-object v3, p1

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr p1, p3

    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    sub-int/2addr p1, p3

    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    sub-int/2addr p1, p3

    const/4 p3, 0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object v4, v3

    new-instance v3, Lcom/grack/nanojson/JsonParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget p2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int v8, p1, p2

    invoke-direct/range {v3 .. v8}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    return-object v3
.end method

.method ensureBuffer(I)I
    .registers 7

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    if-lt v0, v1, :cond_8

    return p1

    :cond_8
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    if-lez v0, :cond_28

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v3, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-le v0, v1, :cond_56

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget-object v3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    array-length v3, v3

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_47

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr p1, v0

    return p1

    :cond_47
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-le v0, p1, :cond_28

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr p1, v0

    return p1

    :cond_56
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected internal error"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p1

    const-string v0, "IOException"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method

.method fixupAfterRawBufferRead()V
    .registers 3

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-lt v0, v1, :cond_c

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    :cond_c
    return-void
.end method

.method isAsciiLetter(I)Z
    .registers 3

    const/16 v0, 0x41

    if-lt p1, v0, :cond_8

    const/16 v0, 0x5a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p1, v0, :cond_12

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method isWhitespace(I)Z
    .registers 3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_13

    const/16 v0, 0xa

    if-eq p1, v0, :cond_13

    const/16 v0, 0xd

    if-eq p1, v0, :cond_13

    const/16 v0, 0x9

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method tokenChar()I
    .registers 3

    :goto_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->advanceChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    :cond_b
    return v0
.end method
