.class public final Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    new-instance v0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_88

    add-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    :goto_d
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_19

    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_19

    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_19
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_1d
    add-int v10, v5, v9

    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_26

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_26
    sub-int v6, v10, v5

    move/from16 v11, p2

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2d
    if-eqz v9, :cond_33

    const/16 v9, 0x2e

    const/4 v14, 0x0

    goto :goto_3e

    :cond_33
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    move/from16 v16, v14

    move v14, v9

    move/from16 v9, v16

    :goto_3e
    add-int v15, v5, v13

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v9, v15

    if-eqz v9, :cond_48

    goto :goto_58

    :cond_48
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v13, v6, :cond_4f

    goto :goto_58

    :cond_4f
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_86

    array-length v14, v1

    sub-int/2addr v14, v8

    if-ne v11, v14, :cond_81

    :goto_58
    if-gez v9, :cond_5e

    :goto_5a
    add-int/lit8 v5, v5, -0x1

    move v2, v5

    goto :goto_7

    :cond_5e
    if-lez v9, :cond_63

    :goto_60
    add-int/lit8 v4, v10, 0x1

    goto :goto_7

    :cond_63
    sub-int v7, v6, v13

    aget-object v8, v1, v11

    array-length v8, v8

    sub-int/2addr v8, v12

    :goto_69
    add-int/lit8 v11, v11, 0x1

    array-length v9, v1

    if-ge v11, v9, :cond_73

    aget-object v9, v1, v11

    array-length v9, v9

    add-int/2addr v8, v9

    goto :goto_69

    :cond_73
    if-ge v8, v7, :cond_76

    goto :goto_5a

    :cond_76
    if-le v8, v7, :cond_79

    goto :goto_60

    :cond_79
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lokhttp4/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_89

    :cond_81
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x1

    const/4 v12, -0x1

    goto :goto_2d

    :cond_86
    move v9, v14

    goto :goto_2d

    :cond_88
    const/4 v1, 0x0

    :goto_89
    return-object v1
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_23

    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_23

    :catch_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_23
    monitor-enter p0

    :try_start_24
    iget-object v0, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_bd

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_c5

    array-length v0, p1

    new-array v3, v0, [[B

    const/4 v4, 0x0

    :goto_2d
    array-length v5, p1

    if-ge v4, v5, :cond_3d

    aget-object v5, p1, v4

    sget-object v6, Lokhttp4/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    const/4 v4, 0x0

    if-ge p1, v0, :cond_4d

    iget-object v5, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v5, v3, p1}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    goto :goto_4e

    :cond_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    :cond_4d
    move-object v5, v4

    :goto_4e
    if-le v0, v2, :cond_6b

    invoke-virtual {v3}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    const/4 v6, 0x0

    :goto_57
    array-length v7, p1

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_6b

    sget-object v7, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v7, p1, v6

    iget-object v7, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v7, p1, v6}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_68

    goto :goto_6c

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_6b
    move-object v7, v4

    :goto_6c
    if-eqz v7, :cond_7f

    :goto_6e
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_7f

    iget-object p1, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {p1, v3, v1}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7c

    move-object v4, p1

    goto :goto_7f

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7f
    :goto_7f
    if-eqz v4, :cond_99

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_99
    if-nez v5, :cond_a0

    if-nez v7, :cond_a0

    sget-object p1, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object p1

    :cond_a0
    if-eqz v5, :cond_a9

    const-string p1, "\\."

    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_ab

    :cond_a9
    sget-object p1, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_ab
    if-eqz v7, :cond_b4

    const-string v0, "\\."

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    :cond_b4
    sget-object v0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_b6
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_bb

    goto :goto_bc

    :cond_bb
    move-object p1, v0

    :goto_bc
    return-object p1

    :cond_bd
    :try_start_bd
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_c5
    move-exception p1

    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_c5

    goto :goto_c9

    :goto_c8
    throw p1

    :goto_c9
    goto :goto_c8
.end method

.method public static get()Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    sget-object v0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .registers 4

    const-class v0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Lokin/GzipSource;

    invoke-static {v0}, Lokin/Okio;->source(Ljava/io/InputStream;)Lokin/Source;

    move-result-object v0

    invoke-direct {v1, v0}, Lokin/GzipSource;-><init>(Lokin/Source;)V

    invoke-static {v1}, Lokin/Okio;->buffer(Lokin/Source;)Lokin/BufferedSource;

    move-result-object v0

    :try_start_18
    invoke-interface {v0}, Lokin/BufferedSource;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {v0, v1}, Lokin/BufferedSource;->readFully([B)V

    invoke-interface {v0}, Lokin/BufferedSource;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {v0, v2}, Lokin/BufferedSource;->readFully([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3c

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    monitor-enter p0

    :try_start_2e
    iput-object v1, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    iput-object v2, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_39

    iget-object v0, p0, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :catchall_3c
    move-exception v1

    invoke-static {v0}, Lokhttp4/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private readTheListUninterruptibly()V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_10
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    :catchall_e
    move-exception v1

    goto :goto_2a

    :catch_10
    move-exception v1

    :try_start_11
    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v1}, Lokhttp4/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_e

    if-eqz v0, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    return-void

    :catch_25
    :try_start_25
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_e

    const/4 v0, 0x1

    goto :goto_1

    :goto_2a
    if-eqz v0, :cond_33

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_33
    goto :goto_35

    :goto_34
    throw v1

    :goto_35
    goto :goto_34
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "domain == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp4/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    array-length v4, v2

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_24

    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_24

    const/4 p1, 0x0

    return-object p1

    :cond_24
    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2f

    array-length v0, v0

    array-length v2, v2

    goto :goto_33

    :cond_2f
    array-length v0, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    :goto_33
    sub-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_3d
    array-length v1, p1

    if-ge v0, v1, :cond_4d

    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
