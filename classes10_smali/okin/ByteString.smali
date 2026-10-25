.class public Lokin/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final EMPTY:Lokin/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lokin/ByteString;->HEX_DIGITS:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lokin/ByteString;->of([B)Lokin/ByteString;

    move-result-object v0

    sput-object v0, Lokin/ByteString;->EMPTY:Lokin/ByteString;

    return-void

    nop

    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokin/ByteString;->data:[B

    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_2c

    if-ne v2, p1, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1d

    const/16 v4, 0xd

    if-ne v3, v4, :cond_22

    :cond_1d
    const v4, 0xfffd

    if-ne v3, v4, :cond_24

    :cond_22
    const/4 p0, -0x1

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_6

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokin/ByteString;
    .registers 2

    if-eqz p0, :cond_10

    invoke-static {p0}, Lokin/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_e

    new-instance v0, Lokin/ByteString;

    invoke-direct {v0, p0}, Lokin/ByteString;-><init>([B)V

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "base64 == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeHex(Ljava/lang/String;)Lokin/ByteString;
    .registers 6

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_37

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_32

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokin/ByteString;->decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokin/ByteString;->decodeHexDigit(C)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_32
    invoke-static {v1}, Lokin/ByteString;->of([B)Lokin/ByteString;

    move-result-object p0

    return-object p0

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hex == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_57

    :goto_56
    throw p0

    :goto_57
    goto :goto_56
.end method

.method private static decodeHexDigit(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    :goto_12
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1f

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1f

    goto :goto_12

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :goto_36
    throw v0

    :goto_37
    goto :goto_36
.end method

.method private digest(Ljava/lang/String;)Lokin/ByteString;
    .registers 3

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v0, p0, Lokin/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lokin/ByteString;->of([B)Lokin/ByteString;

    move-result-object p1
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokin/ByteString;
    .registers 3

    if-eqz p0, :cond_10

    new-instance v0, Lokin/ByteString;

    sget-object v1, Lokin/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokin/ByteString;-><init>([B)V

    iput-object p0, v0, Lokin/ByteString;->utf8:Ljava/lang/String;

    return-object v0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "s == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs of([B)Lokin/ByteString;
    .registers 2

    if-eqz p0, :cond_e

    new-instance v0, Lokin/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lokin/ByteString;-><init>([B)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;I)Lokin/ByteString;
    .registers 6

    if-eqz p0, :cond_37

    if-ltz p1, :cond_20

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p1, :cond_1a

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    add-int/2addr v1, v2

    goto :goto_7

    :cond_14
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1a
    new-instance p0, Lokin/ByteString;

    invoke-direct {p0, v0}, Lokin/ByteString;-><init>([B)V

    return-object p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_40

    :goto_3f
    throw p0

    :goto_40
    goto :goto_3f
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lokin/ByteString;->read(Ljava/io/InputStream;I)Lokin/ByteString;

    move-result-object p1

    :try_start_8
    const-class v0, Lokin/ByteString;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p1, Lokin/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_19} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lokin/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokin/ByteString;->data:[B

    invoke-static {v0}, Lokin/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lokin/ByteString;

    invoke-virtual {p0, p1}, Lokin/ByteString;->compareTo(Lokin/ByteString;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lokin/ByteString;)I
    .registers 11

    invoke-virtual {p0}, Lokin/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokin/ByteString;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_28

    invoke-virtual {p0, v4}, Lokin/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v4}, Lokin/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_23

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_23
    if-ge v7, v8, :cond_26

    goto :goto_27

    :cond_26
    const/4 v5, 0x1

    :goto_27
    return v5

    :cond_28
    if-ne v0, v1, :cond_2b

    return v3

    :cond_2b
    if-ge v0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v5, 0x1

    :goto_2f
    return v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lokin/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    check-cast p1, Lokin/ByteString;

    invoke-virtual {p1}, Lokin/ByteString;->size()I

    move-result v1

    iget-object v3, p0, Lokin/ByteString;->data:[B

    array-length v4, v3

    if-ne v1, v4, :cond_1c

    array-length v1, v3

    invoke-virtual {p1, v2, v3, v2, v1}, Lokin/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public getByte(I)B
    .registers 3

    iget-object v0, p0, Lokin/ByteString;->data:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lokin/ByteString;->hashCode:I

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lokin/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokin/ByteString;->hashCode:I

    :goto_d
    return v0
.end method

.method public hex()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v2, :cond_25

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lokin/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public md5()Lokin/ByteString;
    .registers 2

    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokin/ByteString;->digest(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokin/ByteString;II)Z
    .registers 6

    iget-object v0, p0, Lokin/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lokin/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(I[BII)Z
    .registers 7

    if-ltz p1, :cond_16

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_16

    if-ltz p3, :cond_16

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_16

    invoke-static {v0, p1, p2, p3, p4}, Lokin/Util;->arrayRangeEquals([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public sha1()Lokin/ByteString;
    .registers 2

    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokin/ByteString;->digest(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lokin/ByteString;
    .registers 2

    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokin/ByteString;->digest(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lokin/ByteString;)Z
    .registers 4

    invoke-virtual {p1}, Lokin/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokin/ByteString;->rangeEquals(ILokin/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public substring(II)Lokin/ByteString;
    .registers 6

    if-ltz p1, :cond_44

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v1, v0

    if-gt p2, v1, :cond_25

    sub-int v1, p2, p1

    if-ltz v1, :cond_1d

    if-nez p1, :cond_11

    array-length v2, v0

    if-ne p2, v2, :cond_11

    return-object p0

    :cond_11
    new-array p2, v1, [B

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lokin/ByteString;

    invoke-direct {p1, p2}, Lokin/ByteString;-><init>([B)V

    return-object p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > length("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toAsciiLowercase()Lokin/ByteString;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lokin/ByteString;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_39

    aget-byte v2, v1, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_36

    const/16 v4, 0x5a

    if-le v2, v4, :cond_11

    goto :goto_36

    :cond_11
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_1e
    array-length v0, v1

    if-ge v5, v0, :cond_30

    aget-byte v0, v1, v5

    if-lt v0, v3, :cond_2d

    if-le v0, v4, :cond_28

    goto :goto_2d

    :cond_28
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    :cond_2d
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_30
    new-instance v0, Lokin/ByteString;

    invoke-direct {v0, v1}, Lokin/ByteString;-><init>([B)V

    return-object v0

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    iget-object v0, p0, Lokin/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_8

    const-string v0, "[size=0]"

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lokin/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lokin/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const-string/jumbo v4, "…]"

    const-string v5, "[size="

    const-string v6, "]"

    const/4 v7, 0x0

    if-ne v2, v3, :cond_61

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v0, v0

    if-gt v0, v1, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokin/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokin/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v1}, Lokin/ByteString;->substring(II)Lokin/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokin/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_60
    return-object v0

    :cond_61
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\"

    const-string v7, "\\\\"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v7, "\\n"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v7, "\\r"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_a1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokin/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b5

    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b5
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lokin/ByteString;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokin/ByteString;->data:[B

    sget-object v2, Lokin/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lokin/ByteString;->utf8:Ljava/lang/String;

    :goto_10
    return-object v0
.end method

.method write(Lokin/Buffer;)V
    .registers 5

    iget-object v0, p0, Lokin/ByteString;->data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lokin/Buffer;->write([BII)Lokin/Buffer;

    return-void
.end method
