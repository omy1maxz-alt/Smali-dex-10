.class public final Lorg/jsoup/internal/ConstrainableInputStream;
.super Ljava/io/BufferedInputStream;
.source "ConstrainableInputStream.java"


# instance fields
.field private final capped:Z

.field private interrupted:Z

.field private final maxSize:I

.field private remaining:I

.field private startTime:J

.field private timeout:J


# direct methods
.method private constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ltz p3, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    iput p3, p0, Lorg/jsoup/internal/ConstrainableInputStream;->maxSize:I

    iput p3, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    if-eqz p3, :cond_18

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    iput-boolean p1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->startTime:J

    return-void
.end method

.method private expired()Z
    .registers 7

    iget-wide v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_a

    return v4

    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    cmp-long v5, v0, v2

    if-lez v5, :cond_18

    const/4 v4, 0x1

    :cond_18
    return v4
.end method

.method public static wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;
    .registers 4

    instance-of v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/jsoup/internal/ConstrainableInputStream;

    goto :goto_d

    :cond_7
    new-instance v0, Lorg/jsoup/internal/ConstrainableInputStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/jsoup/internal/ConstrainableInputStream;-><init>(Ljava/io/InputStream;II)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method


# virtual methods
.method public read([BII)I
    .registers 6

    iget-boolean v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->interrupted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    if-gtz v0, :cond_e

    goto :goto_3b

    :cond_e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->interrupted:Z

    return v1

    :cond_18
    invoke-direct {p0}, Lorg/jsoup/internal/ConstrainableInputStream;->expired()Z

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    if-le p3, v0, :cond_27

    move p3, v0

    :cond_27
    :try_start_27
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    iget p2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I
    :try_end_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_27 .. :try_end_30} :catch_31

    return p1

    :catch_31
    const/4 p1, 0x0

    return p1

    :cond_33
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "Read timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    :goto_3b
    return v1
.end method

.method public readToByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const-string v3, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    if-lez p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const v2, 0x8000

    if-eqz v0, :cond_18

    if-ge p1, v2, :cond_18

    move v2, p1

    :cond_18
    new-array v3, v2, [B

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_1f
    if-eqz v0, :cond_26

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_27

    :cond_26
    move v5, v2

    :goto_27
    invoke-virtual {p0, v3, v1, v5}, Lorg/jsoup/internal/ConstrainableInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2f

    goto :goto_36

    :cond_2f
    if-eqz v0, :cond_40

    if-lt v5, p1, :cond_3f

    invoke-virtual {v4, v3, v1, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_36
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_3f
    sub-int/2addr p1, v5

    :cond_40
    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1f
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    iget v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->maxSize:I

    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    return-void
.end method
