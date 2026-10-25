.class public final Lokhttp4/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_REQUEST:Lokhttp4/RequestBody;

.field public static final EMPTY_RESPONSE:Lokhttp4/ResponseBody;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final NATURAL_ORDER:Ljava/util/Comparator;

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_16_BE:Ljava/nio/charset/Charset;

.field private static final UTF_16_BE_BOM:Lokin/ByteString;

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final UTF_16_LE_BOM:Lokin/ByteString;

.field private static final UTF_32_BE:Ljava/nio/charset/Charset;

.field private static final UTF_32_BE_BOM:Lokin/ByteString;

.field private static final UTF_32_LE:Ljava/nio/charset/Charset;

.field private static final UTF_32_LE_BOM:Lokin/ByteString;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final UTF_8_BOM:Lokin/ByteString;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lokhttp4/internal/Util;->EMPTY_BYTE_ARRAY:[B

    new-array v2, v0, [Ljava/lang/String;

    sput-object v2, Lokhttp4/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lokhttp4/ResponseBody;->create(Lokhttp4/MediaType;[B)Lokhttp4/ResponseBody;

    move-result-object v3

    sput-object v3, Lokhttp4/internal/Util;->EMPTY_RESPONSE:Lokhttp4/ResponseBody;

    invoke-static {v2, v1}, Lokhttp4/RequestBody;->create(Lokhttp4/MediaType;[B)Lokhttp4/RequestBody;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->EMPTY_REQUEST:Lokhttp4/RequestBody;

    const-string v1, "efbbbf"

    invoke-static {v1}, Lokin/ByteString;->decodeHex(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_8_BOM:Lokin/ByteString;

    const-string v1, "feff"

    invoke-static {v1}, Lokin/ByteString;->decodeHex(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_16_BE_BOM:Lokin/ByteString;

    const-string v1, "fffe"

    invoke-static {v1}, Lokin/ByteString;->decodeHex(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_16_LE_BOM:Lokin/ByteString;

    const-string v1, "0000ffff"

    invoke-static {v1}, Lokin/ByteString;->decodeHex(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_32_BE_BOM:Lokin/ByteString;

    const-string v1, "ffff0000"

    invoke-static {v1}, Lokin/ByteString;->decodeHex(Ljava/lang/String;)Lokin/ByteString;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_32_LE_BOM:Lokin/ByteString;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v1, "UTF-16BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    const-string v1, "UTF-16LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    const-string v1, "UTF-32BE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    const-string v1, "UTF-32LE"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    const-string v1, "GMT"

    invoke-static {v1}, Ljj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lokhttp4/internal/Util;->UTC:Ljava/util/TimeZone;

    new-instance v1, Lokhttp4/internal/Util$1;

    invoke-direct {v1}, Lokhttp4/internal/Util$1;-><init>()V

    sput-object v1, Lokhttp4/internal/Util;->NATURAL_ORDER:Ljava/util/Comparator;

    :try_start_7d
    const-class v1, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8c} :catch_8c

    :catch_8c
    sput-object v2, Lokhttp4/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static addSuppressedIfPossible(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    sget-object v0, Lokhttp4/internal/Util;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_d} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method public static assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;
    .registers 3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    return-object v0
.end method

.method public static bomAwareCharset(Lokin/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 6

    sget-object v0, Lokhttp4/internal/Util;->UTF_8_BOM:Lokin/ByteString;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v1, v2, v0}, Lokin/BufferedSource;->rangeEquals(JLokin/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lokin/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lokin/BufferedSource;->skip(J)V

    sget-object p0, Lokhttp4/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    :cond_15
    sget-object v0, Lokhttp4/internal/Util;->UTF_16_BE_BOM:Lokin/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lokin/BufferedSource;->rangeEquals(JLokin/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v0}, Lokin/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lokin/BufferedSource;->skip(J)V

    sget-object p0, Lokhttp4/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_28
    sget-object v0, Lokhttp4/internal/Util;->UTF_16_LE_BOM:Lokin/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lokin/BufferedSource;->rangeEquals(JLokin/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v0}, Lokin/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lokin/BufferedSource;->skip(J)V

    sget-object p0, Lokhttp4/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_3b
    sget-object v0, Lokhttp4/internal/Util;->UTF_32_BE_BOM:Lokin/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lokin/BufferedSource;->rangeEquals(JLokin/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-virtual {v0}, Lokin/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lokin/BufferedSource;->skip(J)V

    sget-object p0, Lokhttp4/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_4e
    sget-object v0, Lokhttp4/internal/Util;->UTF_32_LE_BOM:Lokin/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lokin/BufferedSource;->rangeEquals(JLokin/ByteString;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Lokin/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lokin/BufferedSource;->skip(J)V

    sget-object p0, Lokhttp4/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_61
    return-object p1
.end method

.method public static canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p0, v2, v0}, Lokhttp4/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_2d

    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v2}, Lokhttp4/internal/Util;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_2d
    if-nez v0, :cond_30

    return-object v1

    :cond_30
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3e

    invoke-static {v0}, Lokhttp4/internal/Util;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5a
    :try_start_5a
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    return-object v1

    :cond_6b
    invoke-static {p0}, Lokhttp4/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v0
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_6f} :catch_73

    if-eqz v0, :cond_72

    return-object v1

    :cond_72
    return-object p0

    :catch_73
    return-object v1
.end method

.method public static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_50

    const-string/jumbo v2, "unit == null"

    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p3, v2, v4

    if-gtz p3, :cond_39

    cmp-long p3, v2, v0

    if-nez p3, :cond_37

    cmp-long p3, p1, v0

    if-gtz p3, :cond_20

    goto :goto_37

    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too small."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    :goto_37
    long-to-int p0, v2

    return p0

    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too large."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkOffsetAndCount(JJJ)V
    .registers 11

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_12

    cmp-long v0, p2, p0

    if-gtz v0, :cond_12

    sub-long/2addr p0, p2

    cmp-long p2, p0, p4

    if-ltz p2, :cond_12

    return-void

    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_8

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .registers 3

    if-eqz p0, :cond_1e

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_1e

    goto :goto_1e

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bio == null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    throw p0

    :catch_15
    move-exception p0

    invoke-static {p0}, Lokhttp4/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    throw p0

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    return-object v1
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-le v2, v3, :cond_23

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_16

    goto :goto_23

    :cond_16
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    return v4

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    :goto_23
    return v4

    :cond_24
    return v0
.end method

.method public static decodeHexDigit(C)I
    .registers 3

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
    const/4 p0, -0x1

    return p0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 12

    move v0, p4

    :goto_1
    const/4 v1, 0x0

    if-ge p1, p2, :cond_44

    array-length v2, p3

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    if-eq v0, p4, :cond_15

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    :cond_15
    move v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v2, p2, :cond_37

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_37

    const/16 v6, 0x39

    if-le v4, v6, :cond_26

    goto :goto_37

    :cond_26
    if-nez v3, :cond_2b

    if-eq p1, v2, :cond_2b

    return v1

    :cond_2b
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_34

    return v1

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_37
    :goto_37
    sub-int p1, v2, p1

    if-nez p1, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    aput-byte v1, p3, v0

    move v0, p1

    move p1, v2

    goto :goto_1

    :cond_44
    add-int/lit8 p4, p4, 0x4

    if-eq v0, p4, :cond_49

    return v1

    :cond_49
    const/4 p0, 0x1

    return p0
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 14

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_9
    const/4 v7, 0x0

    if-ge p1, p2, :cond_7a

    if-ne v4, v0, :cond_f

    return-object v7

    :cond_f
    add-int/lit8 v8, p1, 0x2

    if-gt v8, p2, :cond_27

    const-string v9, "::"

    const/4 v10, 0x2

    invoke-virtual {p0, p1, v9, v3, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_27

    if-eq v5, v2, :cond_1f

    return-object v7

    :cond_1f
    add-int/lit8 v4, v4, 0x2

    move v5, v4

    if-ne v8, p2, :cond_25

    goto :goto_7a

    :cond_25
    move v6, v8

    goto :goto_4b

    :cond_27
    if-eqz v4, :cond_4a

    const-string v8, ":"

    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v3, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_35

    add-int/lit8 p1, p1, 0x1

    goto :goto_4a

    :cond_35
    const-string v8, "."

    invoke-virtual {p0, p1, v8, v3, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_49

    add-int/lit8 p1, v4, -0x2

    invoke-static {p0, v6, p2, v1, p1}, Lokhttp4/internal/Util;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result p0

    if-nez p0, :cond_46

    return-object v7

    :cond_46
    add-int/lit8 v4, v4, 0x2

    goto :goto_7a

    :cond_49
    return-object v7

    :cond_4a
    :goto_4a
    move v6, p1

    :goto_4b
    move p1, v6

    const/4 v8, 0x0

    :goto_4d
    if-ge p1, p2, :cond_60

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lokhttp4/internal/Util;->decodeHexDigit(C)I

    move-result v9

    if-ne v9, v2, :cond_5a

    goto :goto_60

    :cond_5a
    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v9

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_60
    :goto_60
    sub-int v9, p1, v6

    if-eqz v9, :cond_79

    const/4 v10, 0x4

    if-le v9, v10, :cond_68

    goto :goto_79

    :cond_68
    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    add-int/lit8 v4, v7, 0x1

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    goto :goto_9

    :cond_79
    :goto_79
    return-object v7

    :cond_7a
    :goto_7a
    if-eq v4, v0, :cond_8b

    if-ne v5, v2, :cond_7f

    return-object v7

    :cond_7f
    sub-int p0, v4, v5

    rsub-int/lit8 p1, p0, 0x10

    invoke-static {v1, v5, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    invoke-static {v1, v5, v0, v3}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_8b
    :try_start_8b
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_8f
    .catch Ljava/net/UnknownHostException; {:try_start_8b .. :try_end_8f} :catch_90

    return-object p0

    :catch_90
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_97

    :goto_96
    throw p0

    :goto_97
    goto :goto_96
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_9

    return p1

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_c
    return p2
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    :goto_0
    if-ge p1, p2, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_11
    return p2
.end method

.method public static discard(Lokin/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Lokhttp4/internal/Util;->skipAll(Lokin/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hostHeader(Lokhttp4/HttpUrl;Z)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Lokhttp4/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    if-nez p1, :cond_3b

    invoke-virtual {p0}, Lokhttp4/HttpUrl;->port()I

    move-result p1

    invoke-virtual {p0}, Lokhttp4/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp4/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq p1, v2, :cond_51

    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp4/HttpUrl;->port()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_51
    return-object v0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static immutableMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_14

    :cond_b
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public static indexOf(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_17

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    :goto_17
    return v1

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v2, v4, :cond_25

    move v4, v2

    :goto_a
    if-ge v4, v5, :cond_19

    aget-byte v6, p0, v4

    if-nez v6, :cond_19

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_19

    add-int/lit8 v4, v4, 0x2

    goto :goto_a

    :cond_19
    sub-int v5, v4, v2

    if-le v5, v3, :cond_22

    const/4 v6, 0x4

    if-lt v5, v6, :cond_22

    move v1, v2

    move v3, v5

    :cond_22
    add-int/lit8 v2, v4, 0x2

    goto :goto_4

    :cond_25
    new-instance v2, Lokin/Buffer;

    invoke-direct {v2}, Lokin/Buffer;-><init>()V

    :cond_2a
    :goto_2a
    array-length v4, p0

    if-ge v0, v4, :cond_54

    const/16 v4, 0x3a

    if-ne v0, v1, :cond_3b

    invoke-virtual {v2, v4}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    add-int/2addr v0, v3

    if-ne v0, v5, :cond_2a

    invoke-virtual {v2, v4}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    goto :goto_2a

    :cond_3b
    if-lez v0, :cond_40

    invoke-virtual {v2, v4}, Lokin/Buffer;->writeByte(I)Lokin/Buffer;

    :cond_40
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lokin/Buffer;->writeHexadecimalUnsignedLong(J)Lokin/Buffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_2a

    :cond_54
    invoke-virtual {v2}, Lokin/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intersect(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_22

    aget-object v4, p1, v3

    array-length v5, p2

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_1f

    aget-object v7, p2, v6

    invoke-interface {p0, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1c

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static nonEmptyIntersection(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    array-length v1, p1

    if-eqz v1, :cond_26

    array-length v1, p2

    if-nez v1, :cond_c

    goto :goto_26

    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_26

    aget-object v3, p1, v2

    array-length v4, p2

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_23

    aget-object v6, p2, v5

    invoke-interface {p0, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    :goto_26
    return v0
.end method

.method public static platformTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 4

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_20

    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3b
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v0

    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lokhttp4/internal/Util;->assertionError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public static skipAll(Lokin/Source;ILjava/util/concurrent/TimeUnit;)Z
    .registers 14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lokin/Timeout;->hasDeadline()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1d

    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lokin/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_1e

    :cond_1d
    move-wide v5, v3

    :goto_1e
    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lokin/Timeout;->deadlineNanoTime(J)Lokin/Timeout;

    :try_start_2f
    new-instance p1, Lokin/Buffer;

    invoke-direct {p1}, Lokin/Buffer;-><init>()V

    :goto_34
    const-wide/16 v7, 0x2000

    invoke-interface {p0, p1, v7, v8}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_44

    invoke-virtual {p1}, Lokin/Buffer;->clear()V
    :try_end_43
    .catch Ljava/io/InterruptedIOException; {:try_start_2f .. :try_end_43} :catch_70
    .catchall {:try_start_2f .. :try_end_43} :catchall_5a

    goto :goto_34

    :cond_44
    const/4 p1, 0x1

    cmp-long p2, v5, v3

    if-nez p2, :cond_51

    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lokin/Timeout;->clearDeadline()Lokin/Timeout;

    goto :goto_59

    :cond_51
    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lokin/Timeout;->deadlineNanoTime(J)Lokin/Timeout;

    :goto_59
    return p1

    :catchall_5a
    move-exception p1

    cmp-long p2, v5, v3

    if-nez p2, :cond_67

    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lokin/Timeout;->clearDeadline()Lokin/Timeout;

    goto :goto_6f

    :cond_67
    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lokin/Timeout;->deadlineNanoTime(J)Lokin/Timeout;

    :goto_6f
    throw p1

    :catch_70
    nop

    const/4 p1, 0x0

    cmp-long p2, v5, v3

    if-nez p2, :cond_7e

    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lokin/Timeout;->clearDeadline()Lokin/Timeout;

    goto :goto_86

    :cond_7e
    invoke-interface {p0}, Lokin/Source;->timeout()Lokin/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lokin/Timeout;->deadlineNanoTime(J)Lokin/Timeout;

    :goto_86
    return p1
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_1e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1b

    return p1

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1e
    return p2
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 5

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-lt p2, p1, :cond_22

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1f

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_1f
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_22
    return p1
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    new-instance v0, Lokhttp4/internal/Util$2;

    invoke-direct {v0, p0, p1}, Lokhttp4/internal/Util$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHeaders(Ljava/util/List;)Lokhttp4/Headers;
    .registers 5

    new-instance v0, Lokhttp4/Headers$Builder;

    invoke-direct {v0}, Lokhttp4/Headers$Builder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp4/internal/http2/Header;

    sget-object v2, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    iget-object v3, v1, Lokhttp4/internal/http2/Header;->name:Lokin/ByteString;

    invoke-virtual {v3}, Lokin/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lokhttp4/internal/http2/Header;->value:Lokin/ByteString;

    invoke-virtual {v1}, Lokin/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lokhttp4/internal/Internal;->addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_27
    invoke-virtual {v0}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lokhttp4/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p0, p1, p2}, Lokhttp4/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lokhttp4/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
