.class Ljj$/util/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    const/16 v1, 0x12

    iput v1, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    const/4 v1, -0x8

    iput v1, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    iput-boolean v0, p0, Ljj$/util/Base64$DecInputStream;->eof:Z

    iput-boolean v0, p0, Ljj$/util/Base64$DecInputStream;->closed:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljj$/util/Base64$DecInputStream;->sbBuf:[B

    iput-object p1, p0, Ljj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    iput-object p2, p0, Ljj$/util/Base64$DecInputStream;->base64:[I

    iput-boolean p3, p0, Ljj$/util/Base64$DecInputStream;->isMIME:Z

    return-void
.end method

.method private eof([BIII)I
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/Base64$DecInputStream;->eof:Z

    iget v1, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3c

    iget v1, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_34

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    iget p2, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    if-nez p2, :cond_32

    if-ne p3, v0, :cond_28

    iget p2, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 p2, p2, 0x8

    iput p2, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    const/4 p2, 0x0

    iput p2, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    goto :goto_32

    :cond_28
    add-int/lit8 p2, v1, 0x1

    iget v0, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_3c

    :cond_32
    :goto_32
    move p2, v1

    goto :goto_3c

    :cond_34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    if-ne p2, p4, :cond_40

    const/4 v0, -0x1

    goto :goto_42

    :cond_40
    sub-int v0, p2, p4

    :goto_42
    return v0
.end method

.method private padding([BIII)I
    .registers 9

    iget v0, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_44

    iget v0, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_44

    iget v0, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Ljj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_44

    :cond_1b
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    iget p2, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    const/4 v1, 0x1

    if-nez p2, :cond_3f

    if-ne p3, v1, :cond_35

    iget p2, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 p2, p2, 0x8

    iput p2, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    const/4 p2, 0x0

    iput p2, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    goto :goto_3f

    :cond_35
    add-int/lit8 p2, v0, 0x1

    iget v2, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, p2

    :cond_3f
    :goto_3f
    iput-boolean v1, p0, Ljj$/util/Base64$DecInputStream;->eof:Z

    sub-int p2, v0, p4

    return p2

    :cond_44
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal base64 ending sequence:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-boolean v0, p0, Ljj$/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Ljj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Ljj$/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/Base64$DecInputStream;->closed:Z

    iget-object v0, p0, Ljj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void
.end method

.method public read()I
    .registers 4

    iget-object v0, p0, Ljj$/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljj$/util/Base64$DecInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Ljj$/util/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_12
    return v1
.end method

.method public read([BII)I
    .registers 12

    iget-boolean v0, p0, Ljj$/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_c9

    iget-boolean v0, p0, Ljj$/util/Base64$DecInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    iget v0, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    if-gez v0, :cond_e

    return v1

    :cond_e
    if-ltz p2, :cond_c3

    if-ltz p3, :cond_c3

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_c3

    move v0, p2

    :goto_17
    iget v2, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    const/16 v3, 0x8

    if-ltz v2, :cond_35

    if-nez p3, :cond_22

    sub-int v1, p2, v0

    return v1

    :cond_22
    add-int/lit8 v2, p2, 0x1

    iget v4, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    iget v5, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 p3, p3, -0x1

    iget p2, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    sub-int/2addr p2, v3

    iput p2, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    move p2, v2

    goto :goto_17

    :cond_35
    const/4 v2, 0x0

    iput v2, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    :goto_38
    if-lez p3, :cond_c0

    iget-object v4, p0, Ljj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v1, :cond_47

    invoke-direct {p0, p1, p2, p3, v0}, Ljj$/util/Base64$DecInputStream;->eof([BIII)I

    move-result v1

    return v1

    :cond_47
    iget-object v5, p0, Ljj$/util/Base64$DecInputStream;->base64:[I

    aget v5, v5, v4

    move v4, v5

    const/16 v6, 0x10

    if-gez v5, :cond_7c

    const/4 v5, -0x2

    if-ne v4, v5, :cond_58

    invoke-direct {p0, p1, p2, p3, v0}, Ljj$/util/Base64$DecInputStream;->padding([BIII)I

    move-result v1

    return v1

    :cond_58
    if-ne v4, v1, :cond_7c

    iget-boolean v5, p0, Ljj$/util/Base64$DecInputStream;->isMIME:Z

    if-eqz v5, :cond_5f

    goto :goto_38

    :cond_5f
    new-instance v1, Ljava/io/IOException;

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal base64 character "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7c
    iget v5, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    iget v7, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    shl-int v7, v4, v7

    or-int/2addr v5, v7

    iput v5, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    iget v5, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    if-nez v5, :cond_b8

    const/16 v5, 0x12

    iput v5, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    add-int/lit8 v5, p2, 0x1

    iget v7, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v6, v7, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    const/4 p2, 0x1

    if-ne p3, p2, :cond_9d

    iput v3, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    move p2, v5

    goto :goto_c0

    :cond_9d
    add-int/lit8 p2, v5, 0x1

    iget v6, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    const/4 v5, 0x2

    if-ne p3, v5, :cond_ab

    iput v2, p0, Ljj$/util/Base64$DecInputStream;->nextout:I

    goto :goto_c0

    :cond_ab
    add-int/lit8 v5, p2, 0x1

    iget v6, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 p3, p3, -0x3

    iput v2, p0, Ljj$/util/Base64$DecInputStream;->bits:I

    move p2, v5

    goto :goto_be

    :cond_b8
    iget v5, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    add-int/lit8 v5, v5, -0x6

    iput v5, p0, Ljj$/util/Base64$DecInputStream;->nextin:I

    :goto_be
    goto/16 :goto_38

    :cond_c0
    :goto_c0
    sub-int v1, p2, v0

    return v1

    :cond_c3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
