.class public Ljj$/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final RFC2045:Ljj$/util/Base64$Decoder;

.field static final RFC4648:Ljj$/util/Base64$Decoder;

.field static final RFC4648_URLSAFE:Ljj$/util/Base64$Decoder;

.field private static final fromBase64:[I

.field private static final fromBase64URL:[I


# instance fields
.field private final isMIME:Z

.field private final isURL:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetfromBase64()[I
    .registers 1

    sget-object v0, Ljj$/util/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Ljj$/util/Base64$Decoder;->fromBase64:[I

    sget-object v1, Ljj$/util/Base64$Decoder;->fromBase64:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    :goto_d
    invoke-static {}, Ljj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64()[C

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_21

    sget-object v3, Ljj$/util/Base64$Decoder;->fromBase64:[I

    invoke-static {}, Ljj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64()[C

    move-result-object v4

    aget-char v4, v4, v1

    aput v1, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    sget-object v1, Ljj$/util/Base64$Decoder;->fromBase64:[I

    const/16 v3, 0x3d

    const/4 v4, -0x2

    aput v4, v1, v3

    new-array v0, v0, [I

    sput-object v0, Ljj$/util/Base64$Decoder;->fromBase64URL:[I

    sget-object v0, Ljj$/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    :goto_32
    invoke-static {}, Ljj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64URL()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_46

    sget-object v1, Ljj$/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {}, Ljj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64URL()[C

    move-result-object v2

    aget-char v2, v2, v0

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_46
    sget-object v0, Ljj$/util/Base64$Decoder;->fromBase64URL:[I

    aput v4, v0, v3

    new-instance v0, Ljj$/util/Base64$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljj$/util/Base64$Decoder;->RFC4648:Ljj$/util/Base64$Decoder;

    new-instance v0, Ljj$/util/Base64$Decoder;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljj$/util/Base64$Decoder;->RFC4648_URLSAFE:Ljj$/util/Base64$Decoder;

    new-instance v0, Ljj$/util/Base64$Decoder;

    invoke-direct {v0, v1, v2}, Ljj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljj$/util/Base64$Decoder;->RFC2045:Ljj$/util/Base64$Decoder;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljj$/util/Base64$Decoder;->isURL:Z

    iput-boolean p2, p0, Ljj$/util/Base64$Decoder;->isMIME:Z

    return-void
.end method

.method private decode0([BII[B)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-boolean v2, v0, Ljj$/util/Base64$Decoder;->isURL:Z

    if-eqz v2, :cond_b

    sget-object v2, Ljj$/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_d

    :cond_b
    sget-object v2, Ljj$/util/Base64$Decoder;->fromBase64:[I

    :goto_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x12

    move v6, v5

    move v5, v4

    move v4, v3

    move/from16 v3, p2

    :goto_16
    const/4 v7, 0x6

    if-ge v3, v1, :cond_ef

    const/16 v8, 0x12

    if-ne v6, v8, :cond_77

    add-int/lit8 v9, v3, 0x4

    if-ge v9, v1, :cond_77

    sub-int v9, v1, v3

    and-int/lit8 v9, v9, -0x4

    add-int/2addr v9, v3

    :goto_26
    if-ge v3, v9, :cond_73

    add-int/lit8 v10, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v2, v3

    add-int/lit8 v11, v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    add-int/lit8 v12, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v2, v11

    add-int/lit8 v13, v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v2, v12

    or-int v14, v3, v10

    or-int/2addr v14, v11

    or-int/2addr v14, v12

    if-gez v14, :cond_52

    add-int/lit8 v13, v13, -0x4

    move v3, v13

    goto :goto_73

    :cond_52
    shl-int/lit8 v14, v3, 0x12

    shl-int/lit8 v15, v10, 0xc

    or-int/2addr v14, v15

    shl-int/lit8 v15, v11, 0x6

    or-int/2addr v14, v15

    or-int/2addr v14, v12

    add-int/lit8 v15, v4, 0x1

    shr-int/lit8 v8, v14, 0x10

    int-to-byte v8, v8

    aput-byte v8, p4, v4

    add-int/lit8 v4, v15, 0x1

    shr-int/lit8 v8, v14, 0x8

    int-to-byte v8, v8

    aput-byte v8, p4, v15

    add-int/lit8 v8, v4, 0x1

    int-to-byte v15, v14

    aput-byte v15, p4, v4

    move v4, v8

    move v3, v13

    const/16 v8, 0x12

    goto :goto_26

    :cond_73
    :goto_73
    if-lt v3, v1, :cond_77

    goto/16 :goto_ef

    :cond_77
    add-int/lit8 v8, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget v9, v2, v3

    move v3, v9

    if-gez v9, :cond_cd

    const/4 v9, -0x2

    if-ne v3, v9, :cond_a3

    if-ne v6, v7, :cond_95

    if-eq v8, v1, :cond_9b

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p1, v8

    const/16 v10, 0x3d

    if-ne v8, v10, :cond_93

    move v8, v9

    goto :goto_95

    :cond_93
    move v8, v9

    goto :goto_9b

    :cond_95
    :goto_95
    const/16 v9, 0x12

    if-eq v6, v9, :cond_9b

    move v3, v8

    goto :goto_ef

    :cond_9b
    :goto_9b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a3
    iget-boolean v7, v0, Ljj$/util/Base64$Decoder;->isMIME:Z

    if-eqz v7, :cond_aa

    move v3, v8

    goto/16 :goto_16

    :cond_aa
    new-instance v7, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v9, v8, -0x1

    aget-byte v9, p1, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal base64 character "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_cd
    shl-int v7, v3, v6

    or-int/2addr v5, v7

    add-int/lit8 v6, v6, -0x6

    if-gez v6, :cond_ec

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v9, v5, 0x10

    int-to-byte v9, v9

    aput-byte v9, p4, v4

    add-int/lit8 v4, v7, 0x1

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, p4, v7

    add-int/lit8 v7, v4, 0x1

    int-to-byte v9, v5

    aput-byte v9, p4, v4

    const/16 v4, 0x12

    const/4 v5, 0x0

    move v6, v4

    move v4, v7

    :cond_ec
    move v3, v8

    goto/16 :goto_16

    :cond_ef
    :goto_ef
    if-ne v6, v7, :cond_fa

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    aput-byte v8, p4, v4

    move v4, v7

    goto :goto_10f

    :cond_fa
    if-nez v6, :cond_10b

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    aput-byte v8, p4, v4

    add-int/lit8 v4, v7, 0x1

    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, p4, v7

    goto :goto_10f

    :cond_10b
    const/16 v7, 0xc

    if-eq v6, v7, :cond_13c

    :goto_10f
    if-ge v3, v1, :cond_13b

    iget-boolean v7, v0, Ljj$/util/Base64$Decoder;->isMIME:Z

    if-eqz v7, :cond_122

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v2, v3

    if-gez v3, :cond_121

    move v3, v7

    goto :goto_10f

    :cond_121
    move v3, v7

    :cond_122
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input byte array has incorrect ending byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_13b
    return v4

    :cond_13c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Last unit does not have enough valid bits"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private outLength([BII)I
    .registers 12

    iget-boolean v0, p0, Ljj$/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljj$/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_9

    :cond_7
    sget-object v0, Ljj$/util/Base64$Decoder;->fromBase64:[I

    :goto_9
    const/4 v1, 0x0

    sub-int v2, p3, p2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    return v3

    :cond_10
    const/4 v4, -0x1

    const/4 v5, 0x2

    if-ge v2, v5, :cond_25

    iget-boolean v5, p0, Ljj$/util/Base64$Decoder;->isMIME:Z

    if-eqz v5, :cond_1d

    aget v5, v0, v3

    if-ne v5, v4, :cond_1d

    return v3

    :cond_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25
    iget-boolean v3, p0, Ljj$/util/Base64$Decoder;->isMIME:Z

    const/16 v5, 0x3d

    if-eqz v3, :cond_48

    const/4 v3, 0x0

    :goto_2c
    if-ge p2, p3, :cond_46

    add-int/lit8 v6, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    if-ne p2, v5, :cond_3d

    sub-int v4, p3, v6

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v2, v4

    move p2, v6

    goto :goto_46

    :cond_3d
    aget v7, v0, p2

    move p2, v7

    if-ne v7, v4, :cond_44

    add-int/lit8 v3, v3, 0x1

    :cond_44
    move p2, v6

    goto :goto_2c

    :cond_46
    :goto_46
    sub-int/2addr v2, v3

    goto :goto_58

    :cond_48
    add-int/lit8 v3, p3, -0x1

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_58

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, p3, -0x2

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_58

    add-int/lit8 v1, v1, 0x1

    :cond_58
    :goto_58
    if-nez v1, :cond_62

    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_62

    and-int/lit8 v3, v2, 0x3

    rsub-int/lit8 v1, v3, 0x4

    :cond_62
    add-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v1

    return v3
.end method


# virtual methods
.method public decode([B[B)I
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljj$/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    array-length v2, p2

    if-lt v2, v0, :cond_f

    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, p2}, Ljj$/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output byte array is too small for decoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    goto :goto_36

    :cond_2b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_36
    invoke-direct {p0, v1, v2, v3}, Ljj$/util/Base64$Decoder;->outLength([BII)I

    move-result v4

    new-array v4, v4, [B

    invoke-direct {p0, v1, v2, v3, v4}, Ljj$/util/Base64$Decoder;->decode0([BII[B)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_45} :catch_46

    return-object v5

    :catch_46
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public decode(Ljava/lang/String;)[B
    .registers 3

    sget-object v0, Ljj$/sun/nio/cs/ISO_8859_1;->INSTANCE:Ljj$/sun/nio/cs/ISO_8859_1;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/Base64$Decoder;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljj$/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    new-array v0, v0, [B

    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, v0}, Ljj$/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_14

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/Base64$DecInputStream;

    iget-boolean v1, p0, Ljj$/util/Base64$Decoder;->isURL:Z

    if-eqz v1, :cond_c

    sget-object v1, Ljj$/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_e

    :cond_c
    sget-object v1, Ljj$/util/Base64$Decoder;->fromBase64:[I

    :goto_e
    iget-boolean v2, p0, Ljj$/util/Base64$Decoder;->isMIME:Z

    invoke-direct {v0, p1, v1, v2}, Ljj$/util/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    return-object v0
.end method
