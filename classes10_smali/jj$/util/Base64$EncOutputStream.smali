.class Ljj$/util/Base64$EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# instance fields
.field private b0:I

.field private b1:I

.field private b2:I

.field private final base64:[C

.field private buf:[B

.field private closed:Z

.field private final doPadding:Z

.field private leftover:I

.field private final linemax:I

.field private linepos:I

.field private final newline:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[C[BIZ)V
    .registers 7

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    iput-boolean v0, p0, Ljj$/util/Base64$EncOutputStream;->closed:Z

    iput v0, p0, Ljj$/util/Base64$EncOutputStream;->linepos:I

    iput-object p2, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iput-object p3, p0, Ljj$/util/Base64$EncOutputStream;->newline:[B

    iput p4, p0, Ljj$/util/Base64$EncOutputStream;->linemax:I

    iput-boolean p5, p0, Ljj$/util/Base64$EncOutputStream;->doPadding:Z

    if-gtz p4, :cond_17

    const/16 v0, 0x1fbc

    goto :goto_18

    :cond_17
    move v0, p4

    :goto_18
    new-array v0, v0, [B

    iput-object v0, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    return-void
.end method

.method private checkNewline()V
    .registers 3

    iget v0, p0, Ljj$/util/Base64$EncOutputStream;->linepos:I

    iget v1, p0, Ljj$/util/Base64$EncOutputStream;->linemax:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljj$/util/Base64$EncOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/Base64$EncOutputStream;->linepos:I

    :cond_10
    return-void
.end method

.method private writeb4(CCCC)V
    .registers 9

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x1

    int-to-byte v3, p2

    aput-byte v3, v0, v1

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x2

    int-to-byte v3, p3

    aput-byte v3, v0, v1

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x3

    int-to-byte v3, p4

    aput-byte v3, v0, v1

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    iget-boolean v0, p0, Ljj$/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_83

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/Base64$EncOutputStream;->closed:Z

    iget v1, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-ne v1, v0, :cond_3c

    invoke-direct {p0}, Ljj$/util/Base64$EncOutputStream;->checkNewline()V

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljj$/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v3, v4, 0x2

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Ljj$/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Ljj$/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_7b

    :cond_3c
    iget v0, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v3, :cond_7b

    invoke-direct {p0}, Ljj$/util/Base64$EncOutputStream;->checkNewline()V

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljj$/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v3

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljj$/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Ljj$/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljj$/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v3, v4, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v0, p0, Ljj$/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_7b
    :goto_7b
    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    iget-object v0, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_83
    return-void
.end method

.method public write(I)V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p0, v1, v3, v0}, Ljj$/util/Base64$EncOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 16

    iget-boolean v0, p0, Ljj$/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_128

    if-ltz p2, :cond_122

    if-ltz p3, :cond_122

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_122

    if-nez p3, :cond_f

    return-void

    :cond_f
    iget v0, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_6f

    iget v0, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v2, :cond_2c

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljj$/util/Base64$EncOutputStream;->b1:I

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_2b

    iget p2, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    add-int/2addr p2, v2

    iput p2, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    return-void

    :cond_2b
    move p2, v0

    :cond_2c
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljj$/util/Base64$EncOutputStream;->b2:I

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0}, Ljj$/util/Base64$EncOutputStream;->checkNewline()V

    iget-object p2, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Ljj$/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v3, v1

    aget-char p2, p2, v3

    iget-object v3, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Ljj$/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Ljj$/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    iget-object v4, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v5, p0, Ljj$/util/Base64$EncOutputStream;->b1:I

    shl-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x3f

    iget v6, p0, Ljj$/util/Base64$EncOutputStream;->b2:I

    shr-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    aget-char v4, v4, v5

    iget-object v5, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Ljj$/util/Base64$EncOutputStream;->b2:I

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-direct {p0, p2, v3, v4, v5}, Ljj$/util/Base64$EncOutputStream;->writeb4(CCCC)V

    iget p2, p0, Ljj$/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Ljj$/util/Base64$EncOutputStream;->linepos:I

    move p2, v0

    :cond_6f
    div-int/lit8 v0, p3, 0x3

    mul-int/lit8 v3, v0, 0x3

    sub-int v3, p3, v3

    iput v3, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    :goto_77
    if-lez v0, :cond_ff

    invoke-direct {p0}, Ljj$/util/Base64$EncOutputStream;->checkNewline()V

    iget v3, p0, Ljj$/util/Base64$EncOutputStream;->linemax:I

    if-gtz v3, :cond_84

    iget-object v3, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    array-length v3, v3

    goto :goto_8a

    :cond_84
    iget-object v3, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Ljj$/util/Base64$EncOutputStream;->linepos:I

    sub-int/2addr v3, v4

    :goto_8a
    div-int/lit8 v4, v3, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, p2

    const/4 v5, 0x0

    move v6, p2

    :goto_95
    if-ge v6, v4, :cond_ec

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v6, v8

    iget-object v8, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v9, v5, 0x1

    iget-object v10, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    iget-object v5, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v8, v9, 0x1

    iget-object v10, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    iget-object v5, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v9, v8, 0x1

    iget-object v10, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v8

    iget-object v5, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v8, v9, 0x1

    iget-object v10, p0, Ljj$/util/Base64$EncOutputStream;->base64:[C

    and-int/lit8 v11, v6, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    move v6, v7

    move v5, v8

    goto :goto_95

    :cond_ec
    iget-object v6, p0, Ljj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Ljj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    move p2, v4

    iget v6, p0, Ljj$/util/Base64$EncOutputStream;->linepos:I

    add-int/2addr v6, v5

    iput v6, p0, Ljj$/util/Base64$EncOutputStream;->linepos:I

    div-int/lit8 v6, v5, 0x4

    sub-int/2addr v0, v6

    goto/16 :goto_77

    :cond_ff
    iget v3, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    if-ne v3, v2, :cond_10d

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljj$/util/Base64$EncOutputStream;->b0:I

    move p2, v1

    goto :goto_121

    :cond_10d
    iget v2, p0, Ljj$/util/Base64$EncOutputStream;->leftover:I

    if-ne v2, v1, :cond_121

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Ljj$/util/Base64$EncOutputStream;->b0:I

    add-int/lit8 p2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Ljj$/util/Base64$EncOutputStream;->b1:I

    :cond_121
    :goto_121
    return-void

    :cond_122
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
