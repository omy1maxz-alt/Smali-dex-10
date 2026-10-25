.class public Ljj$/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final FLOAT_UNIT:F = 5.9604645E-8f

.field private static final GAMMA:J = -0x61c8864680b583ebL

.field private static final PROBE_INCREMENT:I = -0x61c88647

.field private static final SEEDER_INCREMENT:J = -0x4498517a7b3558c5L

.field private static final instances:Ljava/lang/ThreadLocal;

.field private static final nextLocalGaussian:Ljava/lang/ThreadLocal;

.field private static final probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final seeder:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field threadLocalRandomProbe:I

.field threadLocalRandomSecondarySeed:I

.field threadLocalRandomSeed:J


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "rnd"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v3, "initialized"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom$1;

    invoke-direct {v0}, Ljj$/util/concurrent/ThreadLocalRandom$1;-><init>()V

    sput-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v5

    xor-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom$2;

    invoke-direct {v0}, Ljj$/util/concurrent/ThreadLocalRandom$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    aget-byte v2, v1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/4 v6, 0x1

    :goto_68
    if-ge v6, v0, :cond_75

    shl-long v7, v2, v0

    aget-byte v9, v1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    or-long v2, v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    :cond_75
    sget-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_7a
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/concurrent/ThreadLocalRandom;->initialized:Z

    return-void
.end method

.method synthetic constructor <init>(Ljj$/util/concurrent/ThreadLocalRandom-IA;)V
    .registers 2

    invoke-direct {p0}, Ljj$/util/concurrent/ThreadLocalRandom;-><init>()V

    return-void
.end method

.method static final advanceProbe(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    sget-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/concurrent/ThreadLocalRandom;

    iput p0, v0, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomProbe:I

    return p0
.end method

.method public static current()Ljj$/util/concurrent/ThreadLocalRandom;
    .registers 2

    sget-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/concurrent/ThreadLocalRandom;

    iget v1, v0, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomProbe:I

    if-nez v1, :cond_f

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->localInit()V

    :cond_f
    return-object v0
.end method

.method static final getProbe()I
    .registers 1

    sget-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/concurrent/ThreadLocalRandom;

    iget v0, v0, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomProbe:I

    return v0
.end method

.method static final localInit()V
    .registers 5

    sget-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    sget-object v2, Ljj$/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, -0x4498517a7b3558c5L  # -1.5671250923562117E-22

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    sget-object v4, Ljj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/util/concurrent/ThreadLocalRandom;

    iput-wide v2, v4, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSeed:J

    iput v1, v4, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomProbe:I

    return-void
.end method

.method private static mix32(J)I
    .registers 7

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long v1, v1, v3

    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL  # -2.902039044684214E23

    mul-long p0, p0, v3

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static mix64(J)J
    .registers 7

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long v1, v1, v3

    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL  # -2.902039044684214E23

    mul-long p0, p0, v3

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method static final nextSecondarySeed()I
    .registers 5

    sget-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/concurrent/ThreadLocalRandom;

    iget v1, v0, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSecondarySeed:I

    move v2, v1

    if-eqz v1, :cond_17

    shl-int/lit8 v1, v2, 0xd

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    goto :goto_2c

    :cond_17
    sget-object v1, Ljj$/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, -0x4498517a7b3558c5L  # -1.5671250923562117E-22

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    iput v1, v0, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSecondarySeed:I

    return v1
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->current()Ljj$/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "rnd"

    iget-wide v2, p0, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSeed:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public synthetic doubles()Ljava/util/stream/DoubleStream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->doubles()Ljj$/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/DoubleStream$Wrapper;->convert(Ljj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/util/concurrent/ThreadLocalRandom;->doubles(DD)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$Wrapper;->convert(Ljj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic doubles(J)Ljava/util/stream/DoubleStream;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ThreadLocalRandom;->doubles(J)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$Wrapper;->convert(Ljj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Ljj$/util/concurrent/ThreadLocalRandom;->doubles(JDD)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/DoubleStream$Wrapper;->convert(Ljj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public doubles()Ljj$/util/stream/DoubleStream;
    .registers 10

    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide v5, 0x7fefffffffffffffL  # Double.MAX_VALUE

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v8}, Ljj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Ljj$/util/stream/DoubleStream;
    .registers 15

    cmpg-double v0, p1, p3

    if-gez v0, :cond_18

    new-instance v1, Ljj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 p1, 0x0

    invoke-static {v1, p1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1

    :cond_18
    move-wide v6, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doubles(J)Ljj$/util/stream/DoubleStream;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1b

    new-instance v3, Ljj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide v8, 0x7fefffffffffffffL  # Double.MAX_VALUE

    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, p1

    invoke-direct/range {v3 .. v11}, Ljj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 p1, 0x0

    invoke-static {v3, p1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object p1

    return-object p1

    :cond_1b
    move-wide v6, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doubles(JDD)Ljj$/util/stream/DoubleStream;
    .registers 17

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_22

    cmpg-double v0, p3, p5

    if-gez v0, :cond_1a

    new-instance v1, Ljj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v1 .. v9}, Ljj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final internalNextDouble(DD)D
    .registers 11

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double v0, v0, v2

    cmpg-double v2, p1, p3

    if-gez v2, :cond_25

    sub-double v2, p3, p1

    mul-double v2, v2, v0

    add-double v0, v2, p1

    cmpl-double v2, v0, p3

    if-ltz v2, :cond_25

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    :cond_25
    return-wide v0
.end method

.method final internalNextInt(II)I
    .registers 9

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    if-ge p1, p2, :cond_3d

    sub-int v1, p2, p1

    add-int/lit8 v2, v1, -0x1

    and-int v3, v1, v2

    if-nez v3, :cond_17

    and-int v3, v0, v2

    add-int v0, v3, p1

    goto :goto_3d

    :cond_17
    if-lez v1, :cond_30

    ushr-int/lit8 v3, v0, 0x1

    :goto_1b
    add-int v4, v3, v2

    rem-int v5, v3, v1

    move v0, v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_2e

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_1b

    :cond_2e
    add-int/2addr v0, p1

    goto :goto_3d

    :cond_30
    :goto_30
    if-lt v0, p1, :cond_34

    if-lt v0, p2, :cond_3d

    :cond_34
    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    goto :goto_30

    :cond_3d
    :goto_3d
    return v0
.end method

.method final internalNextLong(JJ)J
    .registers 21

    invoke-virtual/range {p0 .. p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    cmp-long v2, p1, p3

    if-gez v2, :cond_4f

    sub-long v2, p3, p1

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1f

    and-long v6, v0, v4

    add-long v0, v6, p1

    goto :goto_4f

    :cond_1f
    cmp-long v6, v2, v8

    if-lez v6, :cond_3e

    const/4 v6, 0x1

    ushr-long v10, v0, v6

    :goto_26
    add-long v12, v10, v4

    rem-long v14, v10, v2

    move-wide v0, v14

    sub-long/2addr v12, v14

    cmp-long v7, v12, v8

    if-gez v7, :cond_3b

    invoke-virtual/range {p0 .. p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v12

    ushr-long v10, v12, v6

    goto :goto_26

    :cond_3b
    add-long v0, v0, p1

    goto :goto_4f

    :cond_3e
    :goto_3e
    cmp-long v6, v0, p1

    if-ltz v6, :cond_46

    cmp-long v6, v0, p3

    if-ltz v6, :cond_4f

    :cond_46
    invoke-virtual/range {p0 .. p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_3e

    :cond_4f
    :goto_4f
    return-wide v0
.end method

.method public synthetic ints()Ljava/util/stream/IntStream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->ints()Ljj$/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/IntStream$Wrapper;->convert(Ljj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ints(II)Ljava/util/stream/IntStream;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ThreadLocalRandom;->ints(II)Ljj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$Wrapper;->convert(Ljj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic ints(J)Ljava/util/stream/IntStream;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ThreadLocalRandom;->ints(J)Ljj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$Wrapper;->convert(Ljj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic ints(JII)Ljava/util/stream/IntStream;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/util/concurrent/ThreadLocalRandom;->ints(JII)Ljj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/IntStream$Wrapper;->convert(Ljj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public ints()Ljj$/util/stream/IntStream;
    .registers 8

    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v6}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Ljj$/util/stream/IntStream;
    .registers 10

    if-ge p1, p2, :cond_16

    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_16
    move v5, p1

    move v6, p2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ints(J)Ljj$/util/stream/IntStream;
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_18

    new-instance v3, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, p1

    invoke-direct/range {v3 .. v9}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 p1, 0x0

    invoke-static {v3, p1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_18
    move-wide v6, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ints(JII)Ljj$/util/stream/IntStream;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    if-ge p3, p4, :cond_18

    new-instance v3, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v4, 0x0

    move-wide v6, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v3 .. v9}, Ljj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    const/4 p1, 0x0

    invoke-static {v3, p1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_18
    move-wide v6, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    move-wide v6, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic longs()Ljava/util/stream/LongStream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->longs()Ljj$/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic longs(J)Ljava/util/stream/LongStream;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ThreadLocalRandom;->longs(J)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic longs(JJ)Ljava/util/stream/LongStream;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/util/concurrent/ThreadLocalRandom;->longs(JJ)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic longs(JJJ)Ljava/util/stream/LongStream;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Ljj$/util/concurrent/ThreadLocalRandom;->longs(JJJ)Ljj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/stream/LongStream$Wrapper;->convert(Ljj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public longs()Ljj$/util/stream/LongStream;
    .registers 10

    new-instance v0, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v8}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Ljj$/util/stream/LongStream;
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1b

    new-instance v3, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    move-wide v6, p1

    invoke-direct/range {v3 .. v11}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 p1, 0x0

    invoke-static {v3, p1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1

    :cond_1b
    move-wide v6, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public longs(JJ)Ljj$/util/stream/LongStream;
    .registers 15

    cmp-long v0, p1, p3

    if-gez v0, :cond_18

    new-instance v1, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 p1, 0x0

    invoke-static {v1, p1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object p1

    return-object p1

    :cond_18
    move-wide v6, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bound must be greater than origin"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public longs(JJJ)Ljj$/util/stream/LongStream;
    .registers 17

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_22

    cmp-long v0, p3, p5

    if-gez v0, :cond_1a

    new-instance v1, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v1 .. v9}, Ljj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected next(I)I
    .registers 4

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    return v0
.end method

.method public nextBoolean()Z
    .registers 3

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public nextDouble()D
    .registers 5

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public nextDouble(D)D
    .registers 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2a

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double v0, v0, v2

    mul-double v0, v0, p1

    cmpg-double v2, v0, p1

    if-gez v2, :cond_1e

    move-wide v2, v0

    goto :goto_29

    :cond_1e
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    :goto_29
    return-wide v2

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble(DD)D
    .registers 7

    cmpg-double v0, p1, p3

    if-gez v0, :cond_9

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextFloat()F
    .registers 3

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float v0, v0, v1

    return v0
.end method

.method public nextGaussian()D
    .registers 13

    sget-object v0, Ljj$/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_15

    sget-object v1, Ljj$/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    :cond_15
    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    mul-double v1, v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v1, v5

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v7

    mul-double v7, v7, v3

    sub-double/2addr v7, v5

    mul-double v3, v1, v1

    mul-double v9, v7, v7

    add-double/2addr v3, v9

    cmpl-double v9, v3, v5

    if-gez v9, :cond_15

    const-wide/16 v5, 0x0

    cmpl-double v9, v3, v5

    if-eqz v9, :cond_15

    const-wide/high16 v5, -0x4000000000000000L  # -2.0

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v5

    sget-object v9, Ljj$/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    mul-double v10, v7, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    mul-double v9, v1, v5

    return-wide v9
.end method

.method public nextInt()I
    .registers 3

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 7

    if-lez p1, :cond_28

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    add-int/lit8 v1, p1, -0x1

    and-int v2, p1, v1

    if-nez v2, :cond_12

    and-int/2addr v0, v1

    goto :goto_27

    :cond_12
    ushr-int/lit8 v2, v0, 0x1

    :goto_14
    add-int v3, v2, v1

    rem-int v4, v2, p1

    move v0, v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_27

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_14

    :cond_27
    :goto_27
    return v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextInt(II)I
    .registers 5

    if-ge p1, p2, :cond_7

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong()J
    .registers 3

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_35

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    and-long v6, p1, v4

    cmp-long v8, v6, v0

    if-nez v8, :cond_1b

    and-long v0, v2, v4

    goto :goto_34

    :cond_1b
    const/4 v6, 0x1

    ushr-long v7, v2, v6

    :goto_1e
    add-long v9, v7, v4

    rem-long v11, v7, p1

    move-wide v2, v11

    sub-long/2addr v9, v11

    cmp-long v11, v9, v0

    if-gez v11, :cond_33

    invoke-virtual {p0}, Ljj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v9

    ushr-long v7, v9, v6

    goto :goto_1e

    :cond_33
    move-wide v0, v2

    :goto_34
    return-wide v0

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong(JJ)J
    .registers 7

    cmp-long v0, p1, p3

    if-gez v0, :cond_9

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final nextSeed()J
    .registers 5

    iget-wide v0, p0, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSeed:J

    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v0, v2

    move-wide v2, v0

    iput-wide v0, p0, Ljj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSeed:J

    return-wide v2
.end method

.method public setSeed(J)V
    .registers 4

    iget-boolean v0, p0, Ljj$/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
