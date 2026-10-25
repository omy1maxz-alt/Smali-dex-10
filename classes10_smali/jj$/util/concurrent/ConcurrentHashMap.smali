.class public Ljj$/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;
.implements Ljj$/util/concurrent/ConcurrentMap;


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final BASECOUNT:J

.field private static final CELLSBUSY:J

.field private static final CELLVALUE:J

.field private static final DEFAULT_CAPACITY:I = 0x10

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final HASH_BITS:I = 0x7fffffff

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final MAX_RESIZERS:I = 0xffff

.field private static final MIN_TRANSFER_STRIDE:I = 0x10

.field static final MIN_TREEIFY_CAPACITY:I = 0x40

.field static final MOVED:I = -0x1

.field static final NCPU:I

.field static final RESERVED:I = -0x3

.field private static final RESIZE_STAMP_BITS:I = 0x10

.field private static final RESIZE_STAMP_SHIFT:I = 0x10

.field private static final SIZECTL:J

.field private static final TRANSFERINDEX:J

.field static final TREEBIN:I = -0x2

.field static final TREEIFY_THRESHOLD:I = 0x8

.field private static final U:Ljj$/sun/misc/DesugarUnsafe;

.field static final UNTREEIFY_THRESHOLD:I = 0x6

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field private volatile transient baseCount:J

.field private volatile transient cellsBusy:I

.field private volatile transient counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

.field private transient entrySet:Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;

.field private transient keySet:Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;

.field private volatile transient nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

.field private volatile transient sizeCtl:I

.field volatile transient table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

.field private volatile transient transferIndex:I

.field private transient values:Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Ljj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segments"

    const-class v3, [Ljj$/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segmentMask"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "segmentShift"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    invoke-static {}, Ljj$/sun/misc/DesugarUnsafe;->getUnsafe()Ljj$/sun/misc/DesugarUnsafe;

    move-result-object v0

    sput-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    const-class v1, Ljj$/util/concurrent/ConcurrentHashMap;

    const-string v2, "sizeCtl"

    invoke-virtual {v0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    const-string v2, "transferIndex"

    invoke-virtual {v0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    const-string v2, "baseCount"

    invoke-virtual {v0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    const-string v2, "cellsBusy"

    invoke-virtual {v0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    const-class v1, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    const-class v1, [Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v0, v1}, Ljj$/sun/misc/DesugarUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljj$/util/concurrent/ConcurrentHashMap;->ABASE:I

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    const-class v1, [Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v0, v1}, Ljj$/sun/misc/DesugarUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_93

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    const-class v2, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    return-void

    :cond_93
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/high16 v0, 0x3f400000  # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .registers 9

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_29

    if-ltz p1, :cond_29

    if-lez p3, :cond_29

    if-ge p1, p3, :cond_f

    move p1, p3

    :cond_f
    int-to-long v0, p1

    long-to-float v0, v0

    div-float/2addr v0, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/32 v2, 0x40000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_21

    const/high16 v2, 0x40000000  # 2.0f

    goto :goto_26

    :cond_21
    long-to-int v2, v0

    invoke-static {v2}, Ljj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v2

    :goto_26
    iput v2, p0, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private final addCount(JI)V
    .registers 26

    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v11, v0

    if-nez v0, :cond_1b

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide v12, v4

    add-long v6, v12, v8

    move-wide v14, v6

    invoke-virtual/range {v0 .. v7}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_4a

    :cond_1b
    const/4 v0, 0x1

    if-eqz v11, :cond_b0

    array-length v2, v11

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    if-ltz v2, :cond_b0

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    and-int/2addr v2, v4

    aget-object v2, v11, v2

    move-object v13, v2

    if-eqz v2, :cond_b0

    sget-object v12, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v14, Ljj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v5, v13, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v20, v5

    add-long v18, v20, v8

    move-wide/from16 v16, v5

    invoke-virtual/range {v12 .. v19}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    move v0, v2

    if-nez v2, :cond_43

    goto/16 :goto_b0

    :cond_43
    if-gt v10, v3, :cond_46

    return-void

    :cond_46
    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v14

    :cond_4a
    if-ltz v10, :cond_af

    :goto_4c
    iget v4, v1, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v0, v4

    int-to-long v2, v4

    cmp-long v4, v14, v2

    if-ltz v4, :cond_ae

    iget-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v6, v2

    if-eqz v2, :cond_ac

    array-length v2, v6

    move v7, v2

    const/high16 v3, 0x40000000  # 2.0f

    if-ge v2, v3, :cond_aa

    invoke-static {v7}, Ljj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v12

    if-gez v0, :cond_92

    ushr-int/lit8 v2, v0, 0x10

    if-ne v2, v12, :cond_90

    add-int/lit8 v2, v12, 0x1

    if-eq v0, v2, :cond_90

    const v2, 0xffff

    add-int/2addr v2, v12

    if-eq v0, v2, :cond_90

    iget-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v13, v2

    if-eqz v2, :cond_8e

    iget v2, v1, Ljj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_7d

    goto :goto_af

    :cond_7d
    move v4, v0

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v5, v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-direct {v1, v6, v13}, Ljj$/util/concurrent/ConcurrentHashMap;->transfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_a5

    :cond_8e
    move v4, v0

    goto :goto_af

    :cond_90
    move v4, v0

    goto :goto_af

    :cond_92
    move v4, v0

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v5, v12, 0x10

    add-int/lit8 v5, v5, 0x2

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_a5

    const/4 v0, 0x0

    invoke-direct {v1, v6, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->transfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_a5
    :goto_a5
    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v14

    goto :goto_4c

    :cond_aa
    move v4, v0

    goto :goto_af

    :cond_ac
    move v4, v0

    goto :goto_af

    :cond_ae
    move v4, v0

    :cond_af
    :goto_af
    return-void

    :cond_b0
    :goto_b0
    invoke-direct {v1, v8, v9, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->fullAddCount(JZ)V

    return-void
.end method

.method static final casTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)Z
    .registers 10

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    int-to-long v1, p1

    sget v3, Ljj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljj$/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    move-object v4, p2

    move-object v5, p3

    move-wide v2, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 11

    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_e

    return-object v1

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_3f

    array-length v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v0, :cond_3f

    aget-object v5, v2, v4

    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3c

    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    move-object v7, v6

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-class v8, Ljava/lang/Comparable;

    if-ne v6, v8, :cond_3c

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v8, v6

    if-eqz v6, :cond_3c

    array-length v6, v8

    const/4 v9, 0x1

    if-ne v6, v9, :cond_3c

    aget-object v6, v8, v3

    if-ne v6, v1, :cond_3c

    return-object v1

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method static compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_9

    goto :goto_11

    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private final fullAddCount(JZ)V
    .registers 28

    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    move v2, v0

    if-nez v0, :cond_14

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->localInit()V

    invoke-static {}, Ljj$/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    const/4 v0, 0x1

    goto :goto_16

    :cond_14
    move/from16 v0, p3

    :goto_16
    const/4 v3, 0x0

    move v10, v0

    move v11, v2

    move v12, v3

    :cond_1a
    :goto_1a
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v13, v0

    const/4 v6, 0x0

    if-eqz v0, :cond_bc

    array-length v0, v13

    move v7, v0

    if-lez v0, :cond_bc

    add-int/lit8 v0, v7, -0x1

    and-int/2addr v0, v11

    aget-object v0, v13, v0

    move-object v15, v0

    if-nez v0, :cond_68

    iget v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_66

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v0, v8, v9}, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    move-object v14, v0

    iget v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_66

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v2, 0x0

    :try_start_47
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    move-object v3, v0

    if-eqz v0, :cond_5b

    array-length v0, v3

    move v4, v0

    if-lez v0, :cond_5b

    add-int/lit8 v0, v4, -0x1

    and-int/2addr v0, v11

    move v5, v0

    aget-object v0, v3, v0

    if-nez v0, :cond_5b

    aput-object v14, v3, v5
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_62

    const/4 v2, 0x1

    :cond_5b
    iput v6, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    nop

    if-eqz v2, :cond_1a

    goto/16 :goto_ff

    :catchall_62
    move-exception v0

    iput v6, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_66
    const/4 v12, 0x0

    goto :goto_b6

    :cond_68
    if-nez v10, :cond_6c

    const/4 v10, 0x1

    goto :goto_b6

    :cond_6c
    sget-object v14, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v16, Ljj$/util/concurrent/ConcurrentHashMap;->CELLVALUE:J

    iget-wide v2, v15, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    move-wide/from16 v22, v2

    add-long v20, v22, v8

    move-wide/from16 v18, v2

    invoke-virtual/range {v14 .. v21}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_80

    goto/16 :goto_ff

    :cond_80
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v13, :cond_b5

    sget v0, Ljj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    if-lt v7, v0, :cond_89

    goto :goto_b5

    :cond_89
    if-nez v12, :cond_8d

    const/4 v12, 0x1

    goto :goto_b6

    :cond_8d
    iget v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_b6

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_b6

    :try_start_9d
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v13, :cond_ab

    shl-int/lit8 v0, v7, 0x1

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    iput-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_b1

    :cond_ab
    iput v6, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    nop

    const/4 v12, 0x0

    goto/16 :goto_1a

    :catchall_b1
    move-exception v0

    iput v6, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_b5
    :goto_b5
    const/4 v12, 0x0

    :cond_b6
    :goto_b6
    invoke-static {v11}, Ljj$/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v0

    move v11, v0

    goto :goto_100

    :cond_bc
    iget v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    if-nez v0, :cond_ef

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v13, :cond_ef

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->CELLSBUSY:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_ef

    const/4 v2, 0x0

    :try_start_d1
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    if-ne v0, v13, :cond_e4

    const/4 v0, 0x2

    new-array v0, v0, [Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    and-int/lit8 v3, v11, 0x1

    new-instance v4, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    invoke-direct {v4, v8, v9}, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;-><init>(J)V

    aput-object v4, v0, v3

    iput-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;
    :try_end_e3
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_eb

    const/4 v2, 0x1

    :cond_e4
    iput v6, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    nop

    if-eqz v2, :cond_ea

    goto :goto_ff

    :cond_ea
    goto :goto_100

    :catchall_eb
    move-exception v0

    iput v6, v1, Ljj$/util/concurrent/ConcurrentHashMap;->cellsBusy:I

    throw v0

    :cond_ef
    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->BASECOUNT:J

    iget-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    move-wide v14, v4

    add-long v6, v14, v8

    invoke-virtual/range {v0 .. v7}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_100

    nop

    :goto_ff
    return-void

    :cond_100
    :goto_100
    move-object/from16 v1, p0

    goto/16 :goto_1a
.end method

.method private final initTable()[Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 9

    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_c

    array-length v0, v1

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    move-object v3, p0

    goto :goto_3c

    :cond_c
    :goto_c
    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v6, v0

    if-gez v0, :cond_15

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_15
    sget-object v2, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v4, Ljj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v7, -0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_21
    iget-object v0, v3, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_29

    array-length v0, v1

    if-nez v0, :cond_38

    :cond_29
    if-lez v6, :cond_2d

    move v0, v6

    goto :goto_2f

    :cond_2d
    const/16 v0, 0x10

    :goto_2f
    new-array v2, v0, [Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v2

    iput-object v2, v3, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_3d

    ushr-int/lit8 v4, v0, 0x2

    sub-int v6, v0, v4

    :cond_38
    iput v6, v3, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    nop

    nop

    :goto_3c
    return-object v1

    :catchall_3d
    move-exception v0

    iput v6, v3, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    throw v0
.end method

.method public static newKeySet()Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newKeySet(I)Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 4

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, p0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 33

    move-object/from16 v0, p0

    const/4 v1, -0x1

    iput v1, v0, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    const-wide/16 v6, 0x1

    if-eqz v4, :cond_29

    if-eqz v5, :cond_29

    new-instance v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v9

    invoke-direct {v8, v9, v4, v5, v3}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v3, v8

    add-long/2addr v1, v6

    goto :goto_b

    :cond_29
    const-wide/16 v4, 0x0

    cmp-long v8, v1, v4

    if-nez v8, :cond_36

    const/4 v4, 0x0

    iput v4, v0, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move-wide/from16 v16, v1

    goto/16 :goto_127

    :cond_36
    long-to-float v4, v1

    const/high16 v5, 0x3f400000  # 0.75f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    add-double/2addr v4, v8

    double-to-long v4, v4

    const-wide/32 v8, 0x40000000

    cmp-long v10, v4, v8

    if-ltz v10, :cond_49

    const/high16 v8, 0x40000000  # 2.0f

    goto :goto_4e

    :cond_49
    long-to-int v8, v4

    invoke-static {v8}, Ljj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v8

    :goto_4e
    new-array v9, v8, [Ljj$/util/concurrent/ConcurrentHashMap$Node;

    add-int/lit8 v10, v8, -0x1

    const-wide/16 v11, 0x0

    :goto_54
    if-eqz v3, :cond_119

    iget-object v13, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget v14, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int v15, v14, v10

    invoke-static {v9, v15}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v16

    move-object/from16 v17, v16

    if-nez v16, :cond_72

    const/16 v16, 0x1

    move-wide/from16 v21, v4

    move-wide/from16 v18, v6

    move/from16 v20, v16

    move-object/from16 v7, v17

    move-wide/from16 v16, v1

    goto/16 :goto_107

    :cond_72
    move-wide/from16 v18, v6

    iget-object v6, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v7, v17

    move-wide/from16 v16, v1

    iget v1, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v1, :cond_92

    move-object v1, v7

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v2, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v1, v14, v6, v2}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v2

    if-nez v2, :cond_8b

    add-long v11, v11, v18

    :cond_8b
    const/4 v1, 0x0

    move/from16 v20, v1

    move-wide/from16 v21, v4

    goto/16 :goto_107

    :cond_92
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v20, v7

    move-object/from16 v30, v20

    move/from16 v20, v2

    move-object/from16 v2, v30

    :goto_9c
    if-eqz v2, :cond_bc

    move-wide/from16 v21, v4

    iget v4, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v4, v14, :cond_b5

    iget-object v4, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v5, v4

    if-eq v4, v6, :cond_b1

    if-eqz v5, :cond_b5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    :cond_b1
    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_be

    :cond_b5
    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-wide/from16 v4, v21

    goto :goto_9c

    :cond_bc
    move-wide/from16 v21, v4

    :goto_be
    if-eqz v20, :cond_105

    const/16 v4, 0x8

    if-lt v1, v4, :cond_105

    const/4 v4, 0x0

    add-long v11, v11, v18

    iput-object v7, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v5, 0x0

    const/16 v20, 0x0

    move-object v2, v3

    move/from16 v23, v1

    move-object/from16 v1, v20

    :goto_d1
    if-eqz v2, :cond_fa

    new-instance v24, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move/from16 v20, v4

    iget v4, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v25, v4

    iget-object v4, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v26, v4

    iget-object v4, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v29}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v4, v24

    iput-object v1, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v1, :cond_f2

    move-object v5, v4

    goto :goto_f4

    :cond_f2
    iput-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_f4
    move-object v1, v4

    iget-object v2, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move/from16 v4, v20

    goto :goto_d1

    :cond_fa
    move/from16 v20, v4

    new-instance v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v4, v5}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {v9, v15, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_107

    :cond_105
    move/from16 v23, v1

    :goto_107
    if-eqz v20, :cond_110

    add-long v11, v11, v18

    iput-object v7, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-static {v9, v15, v3}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_110
    move-object v3, v13

    move-wide/from16 v1, v16

    move-wide/from16 v6, v18

    move-wide/from16 v4, v21

    goto/16 :goto_54

    :cond_119
    move-wide/from16 v16, v1

    move-wide/from16 v21, v4

    iput-object v9, v0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    ushr-int/lit8 v1, v8, 0x2

    sub-int v1, v8, v1

    iput v1, v0, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    iput-wide v11, v0, Ljj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    :goto_127
    return-void
.end method

.method static final resizeStamp(I)I
    .registers 3

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const v1, 0x8000

    or-int/2addr v0, v1

    return v0
.end method

.method static final setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 8

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    int-to-long v1, p1

    sget v3, Ljj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljj$/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Ljj$/sun/misc/DesugarUnsafe;->putObjectRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static final spread(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static final tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 7

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    int-to-long v1, p1

    sget v3, Ljj$/util/concurrent/ConcurrentHashMap;->ASHIFT:I

    shl-long/2addr v1, v3

    sget v3, Ljj$/util/concurrent/ConcurrentHashMap;->ABASE:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->getObjectAcquire(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method private static final tableSizeFor(I)I
    .registers 3

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const/4 v1, -0x1

    ushr-int v0, v1, v0

    if-gez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_14

    :cond_d
    const/high16 v1, 0x40000000  # 2.0f

    if-lt v0, v1, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v1, v0, 0x1

    :goto_14
    return v1
.end method

.method private final transfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    array-length v7, v6

    sget v0, Ljj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    const/4 v8, 0x1

    if-le v0, v8, :cond_10

    ushr-int/lit8 v0, v7, 0x3

    sget v2, Ljj$/util/concurrent/ConcurrentHashMap;->NCPU:I

    div-int/2addr v0, v2

    goto :goto_11

    :cond_10
    move v0, v7

    :goto_11
    move v2, v0

    const/16 v9, 0x10

    if-ge v0, v9, :cond_1a

    const/16 v2, 0x10

    move v10, v2

    goto :goto_1b

    :cond_1a
    move v10, v2

    :goto_1b
    if-nez p2, :cond_30

    shl-int/lit8 v0, v7, 0x1

    :try_start_1f
    new-array v0, v0, [Ljj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_29

    nop

    nop

    iput-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iput v7, v1, Ljj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move-object v11, v0

    goto :goto_32

    :catchall_29
    move-exception v0

    const v2, 0x7fffffff

    iput v2, v1, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_30
    move-object/from16 v11, p2

    :goto_32
    array-length v12, v11

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    invoke-direct {v0, v11}, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v13, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v14, v0

    move v15, v2

    move v2, v3

    move v3, v4

    :goto_41
    if-eqz v14, :cond_8d

    add-int/lit8 v0, v2, -0x1

    if-ge v0, v3, :cond_82

    if-eqz v15, :cond_4e

    move/from16 v17, v0

    move/from16 v16, v3

    goto :goto_86

    :cond_4e
    iget v4, v1, Ljj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    move v2, v4

    if-gtz v2, :cond_58

    const/4 v0, -0x1

    const/4 v2, 0x0

    move v14, v2

    move v2, v0

    goto :goto_8c

    :cond_58
    move v2, v0

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    move v5, v2

    move/from16 v16, v3

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->TRANSFERINDEX:J

    if-le v4, v10, :cond_65

    sub-int v17, v4, v10

    goto :goto_67

    :cond_65
    const/16 v17, 0x0

    :goto_67
    move/from16 v18, v17

    move/from16 v29, v17

    move/from16 v17, v5

    move/from16 v5, v29

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_7d

    move/from16 v0, v18

    add-int/lit8 v2, v4, -0x1

    const/4 v3, 0x0

    move v14, v3

    move v3, v0

    goto :goto_8c

    :cond_7d
    move/from16 v3, v16

    move/from16 v2, v17

    goto :goto_8c

    :cond_82
    move/from16 v17, v0

    move/from16 v16, v3

    :goto_86
    const/4 v0, 0x0

    move v14, v0

    move/from16 v3, v16

    move/from16 v2, v17

    :goto_8c
    goto :goto_41

    :cond_8d
    move/from16 v16, v3

    const/4 v0, 0x0

    if-ltz v2, :cond_22e

    if-ge v2, v7, :cond_22e

    add-int v3, v2, v7

    if-lt v3, v12, :cond_a4

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    const/16 v17, 0x1

    const/16 v18, 0x10

    goto/16 :goto_238

    :cond_a4
    invoke-static {v6, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    if-nez v3, :cond_bc

    invoke-static {v6, v2, v0, v13}, Ljj$/util/concurrent/ConcurrentHashMap;->casTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    move v14, v0

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    const/16 v17, 0x1

    const/16 v18, 0x10

    goto/16 :goto_26c

    :cond_bc
    iget v0, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v3, v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_d0

    const/4 v0, 0x1

    move v14, v0

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    const/16 v17, 0x1

    const/16 v18, 0x10

    goto/16 :goto_26c

    :cond_d0
    monitor-enter v4

    :try_start_d1
    invoke-static {v6, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_221

    if-ne v0, v4, :cond_213

    if-ltz v3, :cond_174

    and-int v0, v3, v7

    move-object v5, v4

    const/16 v17, 0x1

    :try_start_de
    iget-object v8, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_e0
    .catchall {:try_start_de .. :try_end_e0} :catchall_169

    :goto_e0
    if-eqz v8, :cond_fc

    const/16 v18, 0x10

    :try_start_e4
    iget v9, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    and-int/2addr v9, v7

    if-eq v9, v0, :cond_eb

    move v0, v9

    move-object v5, v8

    :cond_eb
    iget-object v9, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_ed
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_f1

    move-object v8, v9

    const/16 v9, 0x10

    goto :goto_e0

    :catchall_f1
    move-exception v0

    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    goto/16 :goto_22a

    :cond_fc
    const/16 v18, 0x10

    if-nez v0, :cond_103

    move-object v8, v5

    const/4 v9, 0x0

    goto :goto_105

    :cond_103
    move-object v9, v5

    const/4 v8, 0x0

    :goto_105
    move-object/from16 v19, v4

    move-object/from16 v29, v19

    move/from16 v19, v0

    move-object/from16 v0, v29

    :goto_10d
    if-eq v0, v5, :cond_14c

    move/from16 p2, v3

    :try_start_111
    iget v3, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move-object/from16 v20, v5

    iget-object v5, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_117
    .catchall {:try_start_111 .. :try_end_117} :catchall_143

    move/from16 v21, v7

    :try_start_119
    iget-object v7, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_11b
    .catchall {:try_start_119 .. :try_end_11b} :catchall_13c

    and-int v22, v3, v21

    if-nez v22, :cond_128

    move/from16 v22, v10

    :try_start_121
    new-instance v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v10, v3, v5, v7, v8}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v8, v10

    goto :goto_130

    :cond_128
    move/from16 v22, v10

    new-instance v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v10, v3, v5, v7, v9}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v9, v10

    :goto_130
    iget-object v3, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v3

    move/from16 v3, p2

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v10, v22

    goto :goto_10d

    :catchall_13c
    move-exception v0

    move/from16 v22, v10

    move/from16 v20, v12

    goto/16 :goto_22a

    :catchall_143
    move-exception v0

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    goto/16 :goto_22a

    :cond_14c
    move/from16 p2, v3

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v10

    invoke-static {v11, v2, v8}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    add-int v7, v2, v21

    invoke-static {v11, v7, v9}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v6, v2, v13}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_15f
    .catchall {:try_start_121 .. :try_end_15f} :catchall_164

    const/4 v14, 0x1

    move/from16 v20, v12

    goto/16 :goto_21f

    :catchall_164
    move-exception v0

    move/from16 v20, v12

    goto/16 :goto_22a

    :catchall_169
    move-exception v0

    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    goto/16 :goto_22a

    :cond_174
    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v22, v10

    const/16 v17, 0x1

    const/16 v18, 0x10

    :try_start_17e
    instance-of v0, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_20c

    move-object v0, v4

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v19, v3

    iget-object v3, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_18f
    .catchall {:try_start_17e .. :try_end_18f} :catchall_20f

    move-object/from16 v29, v19

    move-object/from16 v19, v0

    move v0, v10

    move v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v5

    move-object/from16 v5, v29

    :goto_19a
    if-eqz v3, :cond_1d6

    move/from16 v20, v12

    :try_start_19e
    iget v12, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move/from16 v24, v12

    new-instance v23, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v12, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v25, v12

    iget-object v12, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v12

    invoke-direct/range {v23 .. v28}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v12, v23

    and-int v23, v24, v21

    if-nez v23, :cond_1c5

    iput-object v7, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v7, :cond_1bf

    move-object v5, v12

    goto :goto_1c1

    :cond_1bf
    iput-object v12, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_1c1
    move-object v7, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d0

    :cond_1c5
    iput-object v9, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v9, :cond_1cb

    move-object v8, v12

    goto :goto_1cd

    :cond_1cb
    iput-object v12, v9, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_1cd
    move-object v9, v12

    add-int/lit8 v0, v0, 0x1

    :goto_1d0
    iget-object v12, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v3, v12

    move/from16 v12, v20

    goto :goto_19a

    :cond_1d6
    move/from16 v20, v12

    const/4 v3, 0x6

    if-gt v10, v3, :cond_1e0

    invoke-static {v5}, Ljj$/util/concurrent/ConcurrentHashMap;->untreeify(Ljj$/util/concurrent/ConcurrentHashMap$Node;)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    goto :goto_1ea

    :cond_1e0
    if-eqz v0, :cond_1e8

    new-instance v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v12, v5}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_1ea

    :cond_1e8
    move-object/from16 v12, v19

    :goto_1ea
    nop

    if-gt v0, v3, :cond_1f2

    invoke-static {v8}, Ljj$/util/concurrent/ConcurrentHashMap;->untreeify(Ljj$/util/concurrent/ConcurrentHashMap$Node;)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto :goto_1fc

    :cond_1f2
    if-eqz v10, :cond_1fa

    new-instance v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v3, v8}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    goto :goto_1fc

    :cond_1fa
    move-object/from16 v3, v19

    :goto_1fc
    nop

    invoke-static {v11, v2, v12}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    move/from16 v23, v0

    add-int v0, v2, v21

    invoke-static {v11, v0, v3}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    invoke-static {v6, v2, v13}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    const/4 v14, 0x1

    goto :goto_21f

    :cond_20c
    move/from16 v20, v12

    goto :goto_21f

    :catchall_20f
    move-exception v0

    move/from16 v20, v12

    goto :goto_22a

    :cond_213
    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    const/16 v17, 0x1

    const/16 v18, 0x10

    :goto_21f
    monitor-exit v4

    goto :goto_26c

    :catchall_221
    move-exception v0

    move/from16 p2, v3

    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    :goto_22a
    monitor-exit v4
    :try_end_22b
    .catchall {:try_start_19e .. :try_end_22b} :catchall_22c

    throw v0

    :catchall_22c
    move-exception v0

    goto :goto_22a

    :cond_22e
    move/from16 v21, v7

    move/from16 v22, v10

    move/from16 v20, v12

    const/16 v17, 0x1

    const/16 v18, 0x10

    :goto_238
    if-eqz v15, :cond_246

    iput-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v11, v1, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    shl-int/lit8 v0, v21, 0x1

    ushr-int/lit8 v3, v21, 0x1

    sub-int/2addr v0, v3

    iput v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    return-void

    :cond_246
    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    move v4, v2

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    move v5, v4

    iget v4, v1, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v7, v4

    move v8, v5

    add-int/lit8 v5, v7, -0x1

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_26a

    add-int/lit8 v0, v7, -0x2

    invoke-static/range {v21 .. v21}, Ljj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    if-eq v0, v1, :cond_263

    return-void

    :cond_263
    move/from16 v14, v17

    move/from16 v15, v17

    move/from16 v2, v21

    goto :goto_26b

    :cond_26a
    move v2, v8

    :goto_26b
    nop

    :goto_26c
    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v12, v20

    move/from16 v7, v21

    move/from16 v10, v22

    const/4 v8, 0x1

    const/16 v9, 0x10

    goto/16 :goto_41
.end method

.method private final treeifyBin([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)V
    .registers 14

    if-eqz p1, :cond_4c

    array-length v0, p1

    move v1, v0

    const/16 v2, 0x40

    if-ge v0, v2, :cond_e

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    goto :goto_4c

    :cond_e
    invoke-static {p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_4c

    iget v0, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ltz v0, :cond_4c

    monitor-enter v2

    :try_start_1a
    invoke-static {p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    if-ne v0, v2, :cond_47

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_23
    if-eqz v4, :cond_3f

    new-instance v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v6, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v7, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v8, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v3, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_38

    move-object v0, v5

    goto :goto_3a

    :cond_38
    iput-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_3a
    move-object v3, v5

    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, v5

    goto :goto_23

    :cond_3f
    new-instance v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-direct {v4, v0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    invoke-static {p1, p2, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_47
    monitor-exit v2

    goto :goto_4c

    :catchall_49
    move-exception v0

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_1a .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    :goto_4c
    return-void
.end method

.method private final tryPresize(I)V
    .registers 13

    const/high16 v0, 0x20000000

    const/high16 v1, 0x40000000  # 2.0f

    if-lt p1, v0, :cond_9

    const/high16 v0, 0x40000000  # 2.0f

    goto :goto_12

    :cond_9
    ushr-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->tableSizeFor(I)I

    move-result v0

    :goto_12
    move v2, v0

    :goto_13
    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v7, v0

    if-ltz v0, :cond_6f

    iget-object v9, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v9, :cond_48

    array-length v0, v9

    move v10, v0

    if-nez v0, :cond_22

    move-object v4, p0

    goto :goto_49

    :cond_22
    if-le v2, v7, :cond_46

    if-lt v10, v1, :cond_28

    move-object v4, p0

    goto :goto_70

    :cond_28
    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v9, v0, :cond_44

    invoke-static {v10}, Ljj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v0

    sget-object v3, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Ljj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    shl-int/lit8 v4, v0, 0x10

    add-int/lit8 v8, v4, 0x2

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-eqz v3, :cond_6e

    const/4 v3, 0x0

    invoke-direct {p0, v9, v3}, Ljj$/util/concurrent/ConcurrentHashMap;->transfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_6e

    :cond_44
    move-object v4, p0

    goto :goto_6e

    :cond_46
    move-object v4, p0

    goto :goto_70

    :cond_48
    move-object v4, p0

    :goto_49
    if-le v7, v2, :cond_4d

    move v0, v7

    goto :goto_4e

    :cond_4d
    move v0, v2

    :goto_4e
    move v10, v0

    sget-object v3, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Ljj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v8}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_6e

    :try_start_5a
    iget-object v0, v4, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v0, v9, :cond_67

    new-array v0, v10, [Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, v4, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_6a

    ushr-int/lit8 v3, v10, 0x2

    sub-int v3, v10, v3

    move v7, v3

    :cond_67
    iput v7, v4, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    goto :goto_6e

    :catchall_6a
    move-exception v0

    iput v7, v4, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    throw v0

    :cond_6e
    :goto_6e
    goto :goto_13

    :cond_6f
    move-object v4, p0

    :goto_70
    return-void
.end method

.method static untreeify(Ljj$/util/concurrent/ConcurrentHashMap$Node;)Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    :goto_3
    if-eqz v2, :cond_1a

    new-instance v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget v4, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iget-object v5, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v6}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-nez v1, :cond_14

    move-object v0, v3

    goto :goto_16

    :cond_14
    iput-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_16
    move-object v1, v3

    iget-object v2, v2, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_3

    :cond_1a
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    rsub-int/lit8 v3, v0, 0x20

    add-int/lit8 v4, v1, -0x1

    new-array v2, v2, [Ljj$/util/concurrent/ConcurrentHashMap$Segment;

    const/4 v5, 0x0

    :goto_12
    array-length v6, v2

    if-ge v5, v6, :cond_21

    new-instance v6, Ljj$/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v7, 0x3f400000  # 0.75f

    invoke-direct {v6, v7}, Ljj$/util/concurrent/ConcurrentHashMap$Segment;-><init>(F)V

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_21
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    const-string v6, "segments"

    invoke-virtual {v5, v6, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "segmentShift"

    invoke-virtual {v5, v6, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v6, "segmentMask"

    invoke-virtual {v5, v6, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v6

    if-eqz v6, :cond_56

    new-instance v6, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v8, v7

    const/4 v9, 0x0

    array-length v10, v7

    invoke-direct {v6, v7, v8, v9, v10}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_44
    invoke-virtual {v6}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    move-object v9, v8

    if-eqz v8, :cond_56

    iget-object v8, v9, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v8, v9, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_44

    :cond_56
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final batchFor(J)I
    .registers 11

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    move-wide v2, v0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_32

    cmp-long v0, v2, p1

    if-gez v0, :cond_19

    goto :goto_32

    :cond_19
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_30

    div-long v4, v2, p1

    move-wide v2, v4

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2e

    goto :goto_30

    :cond_2e
    long-to-int v1, v2

    goto :goto_31

    :cond_30
    :goto_30
    move v1, v0

    :goto_31
    return v1

    :cond_32
    :goto_32
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .registers 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_5
    const/4 v4, -0x1

    if-eqz v3, :cond_4f

    array-length v5, v3

    if-ge v2, v5, :cond_4f

    invoke-static {v3, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-nez v5, :cond_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_14
    iget v6, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v7, v6

    if-ne v6, v4, :cond_1f

    invoke-virtual {p0, v3, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    const/4 v2, 0x0

    goto :goto_4b

    :cond_1f
    monitor-enter v5

    :try_start_20
    invoke-static {v3, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    if-ne v4, v5, :cond_4a

    const/4 v4, 0x0

    if-ltz v7, :cond_2b

    move-object v6, v5

    goto :goto_36

    :cond_2b
    instance-of v6, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v6, :cond_35

    move-object v6, v5

    check-cast v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v6, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_36

    :cond_35
    move-object v6, v4

    :goto_36
    nop

    :goto_37
    if-eqz v6, :cond_40

    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    iget-object v8, v6, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_4c

    move-object v6, v8

    goto :goto_37

    :cond_40
    add-int/lit8 v8, v2, 0x1

    :try_start_42
    invoke-static {v3, v2, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_47

    move v2, v8

    goto :goto_4a

    :catchall_47
    move-exception v4

    move v2, v8

    goto :goto_4d

    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v5

    :goto_4b
    goto :goto_5

    :catchall_4c
    move-exception v4

    :goto_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v4

    :cond_4f
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_58

    invoke-direct {p0, v0, v1, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_58
    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_141

    if-eqz v3, :cond_141

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v4

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v0

    :goto_1b
    if-eqz v8, :cond_138

    array-length v0, v8

    move v9, v0

    if-nez v0, :cond_23

    goto/16 :goto_138

    :cond_23
    add-int/lit8 v0, v9, -0x1

    and-int/2addr v0, v4

    move v10, v0

    invoke-static {v8, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v11, v0

    const/4 v12, 0x0

    if-nez v0, :cond_60

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    move-object v13, v0

    monitor-enter v13

    :try_start_36
    invoke-static {v8, v10, v12, v13}, Ljj$/util/concurrent/ConcurrentHashMap;->casTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_5d

    if-eqz v0, :cond_56

    const/4 v7, 0x1

    const/4 v14, 0x0

    :try_start_3e
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_4c

    const/4 v6, 0x1

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v4, v2, v5}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_50

    move-object v14, v0

    :cond_4c
    :try_start_4c
    invoke-static {v8, v10, v14}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_56

    :catchall_50
    move-exception v0

    invoke-static {v8, v10, v14}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    nop

    throw v0

    :cond_56
    :goto_56
    monitor-exit v13

    if-eqz v7, :cond_5b

    goto/16 :goto_12e

    :cond_5b
    goto/16 :goto_13d

    :catchall_5d
    move-exception v0

    monitor-exit v13
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_5d

    throw v0

    :cond_60
    iget v0, v11, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v13, v0

    const/4 v14, -0x1

    if-ne v0, v14, :cond_6d

    invoke-virtual {v1, v8, v11}, Ljj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_13d

    :cond_6d
    monitor-enter v11

    :try_start_6e
    invoke-static {v8, v10}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_135

    if-ne v0, v11, :cond_124

    if-ltz v13, :cond_da

    const/4 v0, 0x1

    move-object v7, v11

    const/4 v14, 0x0

    move-object/from16 v17, v14

    move v14, v0

    move-object/from16 v0, v17

    :goto_7e
    :try_start_7e
    iget v15, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v4, :cond_b0

    iget-object v15, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v15

    if-eq v15, v2, :cond_96

    if-eqz v16, :cond_93

    move-object/from16 v15, v16

    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b0

    goto :goto_98

    :cond_93
    move-object/from16 v15, v16

    goto :goto_b0

    :cond_96
    move-object/from16 v15, v16

    :goto_98
    iget-object v12, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    if-eqz v5, :cond_a4

    iput-object v5, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_d2

    :cond_a4
    const/4 v6, -0x1

    iget-object v12, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_ac

    iput-object v12, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_af

    :cond_ac
    invoke-static {v8, v10, v12}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    :goto_af
    goto :goto_d2

    :cond_b0
    :goto_b0
    move-object v0, v7

    iget-object v15, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v7, v15

    if-nez v15, :cond_d4

    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    if-eqz v5, :cond_d2

    iget-object v12, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v12, :cond_ca

    const/4 v6, 0x1

    new-instance v12, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v12, v4, v2, v5}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_d2

    :cond_ca
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v15, "Recursive update"

    invoke-direct {v12, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_d2
    .catchall {:try_start_7e .. :try_end_d2} :catchall_d7

    :cond_d2
    :goto_d2
    move v7, v14

    goto :goto_124

    :cond_d4
    add-int/lit8 v14, v14, 0x1

    goto :goto_7e

    :catchall_d7
    move-exception v0

    move v7, v14

    goto :goto_136

    :cond_da
    :try_start_da
    instance-of v0, v11, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_117

    const/4 v7, 0x1

    move-object v0, v11

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v14, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v15, v14

    if-eqz v14, :cond_ec

    invoke-virtual {v15, v4, v2, v12}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    goto :goto_ed

    :cond_ec
    const/4 v14, 0x0

    :goto_ed
    if-nez v14, :cond_f0

    goto :goto_f2

    :cond_f0
    iget-object v12, v14, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    :goto_f2
    invoke-interface {v3, v2, v12}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    if-eqz v5, :cond_104

    if-eqz v14, :cond_ff

    iput-object v5, v14, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_116

    :cond_ff
    const/4 v6, 0x1

    invoke-virtual {v0, v4, v2, v5}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_116

    :cond_104
    if-eqz v14, :cond_116

    const/4 v6, -0x1

    invoke-virtual {v0, v14}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_116

    iget-object v2, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljj$/util/concurrent/ConcurrentHashMap;->untreeify(Ljj$/util/concurrent/ConcurrentHashMap$Node;)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v8, v10, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_116
    :goto_116
    goto :goto_124

    :cond_117
    instance-of v0, v11, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_11c

    goto :goto_124

    :cond_11c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_124
    :goto_124
    monitor-exit v11
    :try_end_125
    .catchall {:try_start_da .. :try_end_125} :catchall_135

    if-eqz v7, :cond_13d

    const/16 v0, 0x8

    if-lt v7, v0, :cond_12e

    invoke-direct {v1, v8, v10}, Ljj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_12e
    :goto_12e
    if-eqz v6, :cond_134

    int-to-long v8, v6

    invoke-direct {v1, v8, v9, v7}, Ljj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_134
    return-object v5

    :catchall_135
    move-exception v0

    :goto_136
    :try_start_136
    monitor-exit v11
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    throw v0

    :cond_138
    :goto_138
    invoke-direct {v1}, Ljj$/util/concurrent/ConcurrentHashMap;->initTable()[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v8, v0

    :cond_13d
    :goto_13d
    move-object/from16 v2, p1

    goto/16 :goto_1b

    :cond_141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 16

    if-eqz p1, :cond_10a

    if-eqz p2, :cond_10a

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_10
    if-eqz v3, :cond_104

    array-length v4, v3

    move v5, v4

    if-nez v4, :cond_18

    goto/16 :goto_104

    :cond_18
    add-int/lit8 v4, v5, -0x1

    and-int/2addr v4, v0

    move v6, v4

    invoke-static {v3, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v7, v4

    const/4 v8, 0x0

    if-nez v4, :cond_53

    new-instance v4, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    invoke-direct {v4}, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;-><init>()V

    monitor-enter v4

    :try_start_2a
    invoke-static {v3, v6, v8, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->casTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v8
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_50

    if-eqz v8, :cond_49

    const/4 v2, 0x1

    const/4 v8, 0x0

    :try_start_32
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    if-eqz v9, :cond_3f

    new-instance v9, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v9, v0, p1, v1}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_43

    move-object v8, v9

    :cond_3f
    :try_start_3f
    invoke-static {v3, v6, v8}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_49

    :catchall_43
    move-exception v9

    invoke-static {v3, v6, v8}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    nop

    throw v9

    :cond_49
    :goto_49
    monitor-exit v4

    if-eqz v2, :cond_4e

    goto/16 :goto_f9

    :cond_4e
    goto/16 :goto_108

    :catchall_50
    move-exception v8

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_50

    throw v8

    :cond_53
    iget v4, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_5f

    invoke-virtual {p0, v3, v7}, Ljj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    goto/16 :goto_108

    :cond_5f
    if-ne v9, v0, :cond_74

    iget-object v4, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v10, v4

    if-eq v4, p1, :cond_6e

    if-eqz v10, :cond_74

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    :cond_6e
    iget-object v4, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v11, v4

    if-eqz v4, :cond_74

    return-object v11

    :cond_74
    const/4 v4, 0x0

    monitor-enter v7

    :try_start_76
    invoke-static {v3, v6}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    if-ne v10, v7, :cond_ec

    if-ltz v9, :cond_bb

    const/4 v2, 0x1

    move-object v8, v7

    :goto_80
    iget v10, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v10, v0, :cond_95

    iget-object v10, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v11, v10

    if-eq v10, p1, :cond_91

    if-eqz v11, :cond_95

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_95

    :cond_91
    iget-object v10, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v1, v10

    goto :goto_b7

    :cond_95
    move-object v10, v8

    iget-object v11, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v8, v11

    if-nez v11, :cond_b8

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    if-eqz v11, :cond_b7

    iget-object v11, v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez v11, :cond_af

    const/4 v4, 0x1

    new-instance v11, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, p1, v1}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_b7

    :cond_af
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Recursive update"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_b7
    :goto_b7
    goto :goto_ec

    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    :cond_bb
    instance-of v10, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v10, :cond_df

    const/4 v2, 0x2

    move-object v10, v7

    check-cast v10, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v11, v10, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v12, v11

    if-eqz v11, :cond_d3

    invoke-virtual {v12, v0, p1, v8}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v8

    move-object v11, v8

    if-eqz v8, :cond_d3

    iget-object v8, v11, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    move-object v1, v8

    goto :goto_de

    :cond_d3
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    if-eqz v8, :cond_de

    const/4 v4, 0x1

    invoke-virtual {v10, v0, p1, v1}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_de
    :goto_de
    goto :goto_ec

    :cond_df
    instance-of v8, v7, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v8, :cond_e4

    goto :goto_ec

    :cond_e4
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "Recursive update"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_ec
    :goto_ec
    monitor-exit v7
    :try_end_ed
    .catchall {:try_start_76 .. :try_end_ed} :catchall_101

    if-eqz v2, :cond_108

    const/16 v8, 0x8

    if-lt v2, v8, :cond_f6

    invoke-direct {p0, v3, v6}, Ljj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_f6
    if-nez v4, :cond_f9

    return-object v1

    :cond_f9
    :goto_f9
    if-eqz v1, :cond_100

    const-wide/16 v3, 0x1

    invoke-direct {p0, v3, v4, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_100
    return-object v1

    :catchall_101
    move-exception v8

    :try_start_102
    monitor-exit v7
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v8

    :cond_104
    :goto_104
    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap;->initTable()[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    :cond_108
    :goto_108
    goto/16 :goto_10

    :cond_10a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 16

    if-eqz p1, :cond_c5

    if-eqz p2, :cond_c5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_11
    if-eqz v4, :cond_bf

    array-length v5, v4

    move v6, v5

    if-nez v5, :cond_19

    goto/16 :goto_bf

    :cond_19
    add-int/lit8 v5, v6, -0x1

    and-int/2addr v5, v0

    move v7, v5

    invoke-static {v4, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v8, v5

    if-nez v5, :cond_26

    goto/16 :goto_b5

    :cond_26
    iget v5, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v9, v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_32

    invoke-virtual {p0, v4, v8}, Ljj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    goto/16 :goto_c3

    :cond_32
    monitor-enter v8

    :try_start_33
    invoke-static {v4, v7}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    if-ne v5, v8, :cond_b1

    if-ltz v9, :cond_72

    const/4 v3, 0x1

    move-object v5, v8

    const/4 v10, 0x0

    :goto_3e
    iget v11, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v11, v0, :cond_67

    iget-object v11, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v12, v11

    if-eq v11, p1, :cond_4f

    if-eqz v12, :cond_67

    invoke-virtual {p1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    :cond_4f
    iget-object v11, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v11}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    if-eqz v1, :cond_5b

    iput-object v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_6e

    :cond_5b
    const/4 v2, -0x1

    iget-object v11, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v10, :cond_63

    iput-object v11, v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_66

    :cond_63
    invoke-static {v4, v7, v11}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    :goto_66
    goto :goto_6e

    :cond_67
    move-object v10, v5

    iget-object v11, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v11

    if-nez v11, :cond_6f

    nop

    :goto_6e
    goto :goto_b1

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_72
    instance-of v5, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v5, :cond_a4

    const/4 v3, 0x2

    move-object v5, v8

    check-cast v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v10, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v11, v10

    if-eqz v10, :cond_a3

    const/4 v10, 0x0

    invoke-virtual {v11, v0, p1, v10}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v10

    move-object v12, v10

    if-eqz v10, :cond_a3

    iget-object v10, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {p2, p1, v10}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    if-eqz v1, :cond_93

    iput-object v1, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_a3

    :cond_93
    const/4 v2, -0x1

    invoke-virtual {v5, v12}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v10

    if-eqz v10, :cond_a3

    iget-object v10, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v10}, Ljj$/util/concurrent/ConcurrentHashMap;->untreeify(Ljj$/util/concurrent/ConcurrentHashMap$Node;)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v10

    invoke-static {v4, v7, v10}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_a3
    :goto_a3
    goto :goto_b1

    :cond_a4
    instance-of v5, v8, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v5, :cond_a9

    goto :goto_b1

    :cond_a9
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v10, "Recursive update"

    invoke-direct {v5, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b1
    :goto_b1
    monitor-exit v8
    :try_end_b2
    .catchall {:try_start_33 .. :try_end_b2} :catchall_bc

    if-eqz v3, :cond_c3

    nop

    :goto_b5
    if-eqz v2, :cond_bb

    int-to-long v4, v2

    invoke-direct {p0, v4, v5, v3}, Ljj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_bb
    return-object v1

    :catchall_bc
    move-exception v5

    :try_start_bd
    monitor-exit v8
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v5

    :cond_bf
    :goto_bf
    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap;->initTable()[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    :cond_c3
    :goto_c3
    goto/16 :goto_11

    :cond_c5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 8

    if-eqz p1, :cond_28

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v1

    array-length v4, v1

    invoke-direct {v0, v1, v3, v2, v4}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_f
    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_27

    iget-object v3, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v5, v3

    if-eq v3, p1, :cond_25

    if-eqz v5, :cond_24

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    goto :goto_f

    :cond_25
    :goto_25
    const/4 v2, 0x1

    return v2

    :cond_27
    return v2

    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 8

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_a

    :cond_8
    array-length v0, v2

    move v3, v0

    :goto_a
    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v4, 0x0

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->entrySet:Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    move-object v1, v0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    invoke-direct {v0, p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->entrySet:Ljj$/util/concurrent/ConcurrentHashMap$EntrySetView;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13

    if-eq p1, p0, :cond_68

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v3, v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_13

    :cond_12
    array-length v2, v3

    :goto_13
    new-instance v4, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v4, v3, v2, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_18
    invoke-virtual {v4}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_34

    iget-object v5, v6, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v7, v6, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_33

    if-eq v7, v5, :cond_32

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_33

    :cond_32
    goto :goto_18

    :cond_33
    :goto_33
    return v1

    :cond_34
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    if-eqz v7, :cond_67

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    if-eqz v7, :cond_67

    invoke-virtual {p0, v8}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    if-eqz v7, :cond_67

    if-eq v9, v10, :cond_66

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    goto :goto_67

    :cond_66
    goto :goto_3c

    :cond_67
    :goto_67
    return v1

    :cond_68
    const/4 v0, 0x1

    return v0
.end method

.method public forEach(JLjava/util/function/BiConsumer;)V
    .registers 11

    if-eqz p3, :cond_15

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->invoke()Ljava/lang/Object;

    return-void

    :cond_15
    move-object v6, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public forEach(JLjava/util/function/BiFunction;Ljava/util/function/Consumer;)V
    .registers 13

    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedMappingTask;->invoke()Ljava/lang/Object;

    return-void

    :cond_18
    move-object v6, p3

    move-object v7, p4

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .registers 7

    if-eqz p1, :cond_1f

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_f
    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1e

    iget-object v2, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v2, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public forEachEntry(JLjava/util/function/Consumer;)V
    .registers 11

    if-eqz p3, :cond_15

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachEntryTask;->invoke()Ljava/lang/Object;

    return-void

    :cond_15
    move-object v6, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public forEachEntry(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 13

    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedEntryTask;->invoke()Ljava/lang/Object;

    return-void

    :cond_18
    move-object v6, p3

    move-object v7, p4

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public forEachKey(JLjava/util/function/Consumer;)V
    .registers 11

    if-eqz p3, :cond_15

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachKeyTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachKeyTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachKeyTask;->invoke()Ljava/lang/Object;

    return-void

    :cond_15
    move-object v6, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public forEachKey(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 13

    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->invoke()Ljava/lang/Object;

    return-void

    :cond_18
    move-object v6, p3

    move-object v7, p4

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public forEachValue(JLjava/util/function/Consumer;)V
    .registers 11

    if-eqz p3, :cond_15

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachValueTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachValueTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachValueTask;->invoke()Ljava/lang/Object;

    return-void

    :cond_15
    move-object v6, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public forEachValue(JLjava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 13

    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedValueTask;->invoke()Ljava/lang/Object;

    return-void

    :cond_18
    move-object v6, p3

    move-object v7, p4

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_56

    array-length v1, v2

    move v4, v1

    if-lez v1, :cond_56

    add-int/lit8 v1, v4, -0x1

    and-int/2addr v1, v0

    invoke-static {v2, v1}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v5, v1

    if-eqz v1, :cond_56

    iget v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v6, v1

    if-ne v1, v0, :cond_31

    iget-object v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    if-eq v1, p1, :cond_2e

    if-eqz v7, :cond_3d

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_2e
    iget-object v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    :cond_31
    if-gez v6, :cond_3d

    invoke-virtual {v5, v0, p1}, Ljj$/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v7, v1

    if-eqz v1, :cond_3c

    iget-object v3, v7, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_3c
    return-object v3

    :cond_3d
    iget-object v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v5, v1

    if-eqz v1, :cond_56

    iget v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, v0, :cond_3d

    iget-object v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v1

    if-eq v1, p1, :cond_53

    if-eqz v7, :cond_3d

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_53
    iget-object v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v1

    :cond_56
    return-object v3
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_9

    move-object v0, p2

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    return-object v0
.end method

.method public hashCode()I
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    if-eqz v1, :cond_24

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_e
    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_24

    iget-object v3, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v3, v5

    add-int/2addr v0, v3

    goto :goto_e

    :cond_24
    return v0
.end method

.method final helpTransfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)[Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 12

    if-eqz p1, :cond_4d

    instance-of v0, p2, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_4d

    move-object v0, p2

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_4b

    array-length v0, p1

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->resizeStamp(I)I

    move-result v0

    :cond_13
    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v1, v2, :cond_49

    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-ne v2, p1, :cond_49

    iget v2, p0, Ljj$/util/concurrent/ConcurrentHashMap;->sizeCtl:I

    move v7, v2

    if-gez v2, :cond_47

    ushr-int/lit8 v2, v7, 0x10

    if-ne v2, v0, :cond_45

    add-int/lit8 v2, v0, 0x1

    if-eq v7, v2, :cond_45

    const v2, 0xffff

    add-int/2addr v2, v0

    if-eq v7, v2, :cond_45

    iget v2, p0, Ljj$/util/concurrent/ConcurrentHashMap;->transferIndex:I

    if-gtz v2, :cond_34

    move-object v4, p0

    goto :goto_4a

    :cond_34
    sget-object v3, Ljj$/util/concurrent/ConcurrentHashMap;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Ljj$/util/concurrent/ConcurrentHashMap;->SIZECTL:J

    add-int/lit8 v8, v7, 0x1

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, p1, v1}, Ljj$/util/concurrent/ConcurrentHashMap;->transfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_4a

    :cond_45
    move-object v4, p0

    goto :goto_4a

    :cond_47
    move-object v4, p0

    goto :goto_4a

    :cond_49
    move-object v4, p0

    :goto_4a
    return-object v1

    :cond_4b
    move-object v4, p0

    goto :goto_4e

    :cond_4d
    move-object v4, p0

    :goto_4e
    iget-object v0, v4, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 6

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 4

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->keySet:Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;

    move-object v1, v0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->keySet:Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;

    return-object v0
.end method

.method public keySet(Ljava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-direct {v0, p0, p1}, Ljj$/util/concurrent/ConcurrentHashMap$KeySetView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 8

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_a

    :cond_8
    array-length v0, v2

    move v3, v0

    :goto_a
    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$KeyIterator;

    const/4 v4, 0x0

    move v5, v3

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljj$/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V

    return-object v1
.end method

.method public mappingCount()J
    .registers 6

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_b

    goto :goto_c

    :cond_b
    move-wide v2, v0

    :goto_c
    return-wide v2
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v2, :cond_148

    if-eqz v3, :cond_148

    if-eqz v4, :cond_148

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v1, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v8

    move v8, v7

    move v7, v6

    move-object v6, v0

    :goto_1f
    if-eqz v9, :cond_13b

    array-length v0, v9

    move v10, v0

    if-nez v0, :cond_29

    move-object/from16 v16, v6

    goto/16 :goto_13d

    :cond_29
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    move v11, v0

    invoke-static {v9, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v12, v0

    const/4 v13, 0x0

    if-nez v0, :cond_45

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v0, v5, v2, v3}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v9, v11, v13, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->casTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v0

    if-eqz v0, :cond_144

    const/4 v0, 0x1

    move-object/from16 v6, p2

    goto/16 :goto_12d

    :cond_45
    iget v0, v12, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v14, v0

    const/4 v15, -0x1

    if-ne v0, v15, :cond_52

    invoke-virtual {v1, v9, v12}, Ljj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_144

    :cond_52
    monitor-enter v12

    :try_start_53
    invoke-static {v9, v11}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_134

    if-ne v0, v12, :cond_11e

    if-ltz v14, :cond_ca

    const/4 v0, 0x1

    move-object v8, v12

    const/4 v13, 0x0

    move-object/from16 v17, v13

    move v13, v0

    move-object/from16 v0, v17

    :goto_63
    :try_start_63
    iget v15, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v15, v5, :cond_9f

    iget-object v15, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_c4

    move-object/from16 v16, v15

    if-eq v15, v2, :cond_80

    if-eqz v16, :cond_7b

    move-object/from16 v15, v16

    :try_start_71
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_b5

    if-eqz v16, :cond_78

    goto :goto_82

    :cond_78
    move-object/from16 v16, v6

    goto :goto_a1

    :cond_7b
    move-object/from16 v15, v16

    move-object/from16 v16, v6

    goto :goto_a1

    :cond_80
    move-object/from16 v15, v16

    :goto_82
    move-object/from16 v16, v6

    :try_start_84
    iget-object v6, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v4, v6, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_be

    if-eqz v6, :cond_8f

    :try_start_8c
    iput-object v6, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_b5

    goto :goto_b2

    :cond_8f
    const/4 v7, -0x1

    move-object/from16 v16, v6

    :try_start_92
    iget-object v6, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_99

    iput-object v6, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_9c

    :cond_99
    invoke-static {v9, v11, v6}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    :goto_9c
    move-object/from16 v6, v16

    goto :goto_b2

    :cond_9f
    move-object/from16 v16, v6

    :goto_a1
    move-object v0, v8

    iget-object v6, v8, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_a4
    .catchall {:try_start_92 .. :try_end_a4} :catchall_be

    move-object v8, v6

    if-nez v6, :cond_b9

    const/4 v7, 0x1

    move-object/from16 v6, p2

    :try_start_aa
    new-instance v15, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v15, v5, v2, v6}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v15, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_b5

    nop

    :goto_b2
    move v8, v13

    goto/16 :goto_122

    :catchall_b5
    move-exception v0

    move v8, v13

    goto/16 :goto_137

    :cond_b9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v16

    goto :goto_63

    :catchall_be
    move-exception v0

    move v8, v13

    move-object/from16 v6, v16

    goto/16 :goto_137

    :catchall_c4
    move-exception v0

    move-object/from16 v16, v6

    move v8, v13

    goto/16 :goto_137

    :cond_ca
    move-object/from16 v16, v6

    :try_start_cc
    instance-of v0, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_10d

    const/4 v8, 0x2

    move-object v0, v12

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v6, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v6, :cond_d9

    goto :goto_dd

    :cond_d9
    invoke-virtual {v6, v5, v2, v13}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    :goto_dd
    nop

    if-nez v13, :cond_e2

    move-object v15, v3

    goto :goto_e8

    :cond_e2
    iget-object v15, v13, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    invoke-interface {v4, v15, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_e8
    .catchall {:try_start_cc .. :try_end_e8} :catchall_11a

    :goto_e8
    nop

    if-eqz v15, :cond_f5

    if-eqz v13, :cond_f0

    :try_start_ed
    iput-object v15, v13, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_10b

    :cond_f0
    const/4 v7, 0x1

    invoke-virtual {v0, v5, v2, v15}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_10b

    :cond_f5
    if-eqz v13, :cond_10b

    const/4 v7, -0x1

    invoke-virtual {v0, v13}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v16

    if-eqz v16, :cond_10b

    iget-object v2, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljj$/util/concurrent/ConcurrentHashMap;->untreeify(Ljj$/util/concurrent/ConcurrentHashMap$Node;)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v9, v11, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V
    :try_end_107
    .catchall {:try_start_ed .. :try_end_107} :catchall_108

    goto :goto_10b

    :catchall_108
    move-exception v0

    move-object v6, v15

    goto :goto_137

    :cond_10b
    :goto_10b
    move-object v6, v15

    goto :goto_122

    :cond_10d
    :try_start_10d
    instance-of v0, v12, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_112

    goto :goto_120

    :cond_112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11a
    .catchall {:try_start_10d .. :try_end_11a} :catchall_11a

    :catchall_11a
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_137

    :cond_11e
    move-object/from16 v16, v6

    :goto_120
    move-object/from16 v6, v16

    :goto_122
    :try_start_122
    monitor-exit v12
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_139

    if-eqz v8, :cond_144

    const/16 v0, 0x8

    if-lt v8, v0, :cond_12c

    invoke-direct {v1, v9, v11}, Ljj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_12c
    move v0, v7

    :goto_12d
    if-eqz v0, :cond_133

    int-to-long v9, v0

    invoke-direct {v1, v9, v10, v8}, Ljj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_133
    return-object v6

    :catchall_134
    move-exception v0

    move-object/from16 v16, v6

    :goto_137
    :try_start_137
    monitor-exit v12
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_139

    throw v0

    :catchall_139
    move-exception v0

    goto :goto_137

    :cond_13b
    move-object/from16 v16, v6

    :goto_13d
    invoke-direct {v1}, Ljj$/util/concurrent/ConcurrentHashMap;->initTable()[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v9, v0

    move-object/from16 v6, v16

    :cond_144
    :goto_144
    move-object/from16 v2, p1

    goto/16 :goto_1f

    :cond_148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->tryPresize(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_f

    :cond_28
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final putVal(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 16

    if-eqz p1, :cond_ca

    if-eqz p2, :cond_ca

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_f
    if-eqz v2, :cond_c4

    array-length v3, v2

    move v4, v3

    if-nez v3, :cond_17

    goto/16 :goto_c4

    :cond_17
    add-int/lit8 v3, v4, -0x1

    and-int/2addr v3, v0

    move v5, v3

    invoke-static {v2, v3}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v6, v3

    const/4 v7, 0x0

    if-nez v3, :cond_30

    new-instance v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v3, v0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v5, v7, v3}, Ljj$/util/concurrent/ConcurrentHashMap;->casTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)Z

    move-result v3

    if-eqz v3, :cond_c8

    goto/16 :goto_bb

    :cond_30
    iget v3, v6, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v8, v3

    const/4 v9, -0x1

    if-ne v3, v9, :cond_3c

    invoke-virtual {p0, v2, v6}, Ljj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    goto/16 :goto_c8

    :cond_3c
    if-eqz p3, :cond_53

    if-ne v8, v0, :cond_53

    iget-object v3, v6, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v9, v3

    if-eq v3, p1, :cond_4d

    if-eqz v9, :cond_53

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    :cond_4d
    iget-object v3, v6, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v10, v3

    if-eqz v3, :cond_53

    return-object v10

    :cond_53
    const/4 v3, 0x0

    monitor-enter v6

    :try_start_55
    invoke-static {v2, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v9

    if-ne v9, v6, :cond_ae

    if-ltz v8, :cond_8a

    const/4 v1, 0x1

    move-object v9, v6

    :goto_5f
    iget v10, v9, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v10, v0, :cond_78

    iget-object v10, v9, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v11, v10

    if-eq v10, p1, :cond_70

    if-eqz v11, :cond_78

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_78

    :cond_70
    iget-object v10, v9, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v10

    if-nez p3, :cond_86

    iput-object p2, v9, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_86

    :cond_78
    move-object v10, v9

    iget-object v11, v9, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v9, v11

    if-nez v11, :cond_87

    new-instance v11, Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-direct {v11, v0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v11, v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    nop

    :cond_86
    :goto_86
    goto :goto_ae

    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_8a
    instance-of v9, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v9, :cond_a1

    const/4 v1, 0x2

    move-object v9, v6

    check-cast v9, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-virtual {v9, v0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_a0

    iget-object v9, v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v3, v9

    if-nez p3, :cond_a0

    iput-object p2, v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    :cond_a0
    goto :goto_ae

    :cond_a1
    instance-of v9, v6, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v9, :cond_a6

    goto :goto_ae

    :cond_a6
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "Recursive update"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_ae
    :goto_ae
    monitor-exit v6
    :try_end_af
    .catchall {:try_start_55 .. :try_end_af} :catchall_c1

    if-eqz v1, :cond_c8

    const/16 v9, 0x8

    if-lt v1, v9, :cond_b8

    invoke-direct {p0, v2, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->treeifyBin([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)V

    :cond_b8
    if-eqz v3, :cond_bb

    return-object v3

    :cond_bb
    :goto_bb
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3, v1}, Ljj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    return-object v7

    :catchall_c1
    move-exception v7

    :try_start_c2
    monitor-exit v6
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw v7

    :cond_c4
    :goto_c4
    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap;->initTable()[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    :cond_c8
    :goto_c8
    goto/16 :goto_f

    :cond_ca
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduce(JLjava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14

    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_1a
    move-object v7, p3

    move-object v8, p4

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceEntries(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14

    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_1a
    move-object v7, p3

    move-object v8, p4

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceEntries(JLjava/util/function/BiFunction;)Ljava/util/Map$Entry;
    .registers 12

    if-eqz p3, :cond_19

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    return-object p3

    :cond_19
    move-object v7, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceEntriesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18

    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    invoke-virtual/range {p0 .. p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceEntriesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 16

    if-eqz p3, :cond_21

    if-eqz p5, :cond_21

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    return p3

    :cond_21
    move-object v7, p3

    move v8, p4

    move-object v9, p5

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceEntriesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18

    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    invoke-virtual/range {p0 .. p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeys(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12

    if-eqz p3, :cond_17

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_17
    move-object v7, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceKeys(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14

    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_1a
    move-object v7, p3

    move-object v8, p4

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceKeysToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18

    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;

    invoke-virtual/range {p0 .. p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceKeysToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 16

    if-eqz p3, :cond_21

    if-eqz p5, :cond_21

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToIntTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    return p3

    :cond_21
    move-object v7, p3

    move v8, p4

    move-object v9, p5

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceKeysToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18

    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;

    invoke-virtual/range {p0 .. p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceKeysToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceToDouble(JLjava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18

    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    invoke-virtual/range {p0 .. p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceToInt(JLjava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 16

    if-eqz p3, :cond_21

    if-eqz p5, :cond_21

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    return p3

    :cond_21
    move-object v7, p3

    move v8, p4

    move-object v9, p5

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceToLong(JLjava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18

    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    invoke-virtual/range {p0 .. p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValues(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12

    if-eqz p3, :cond_17

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_17
    move-object v7, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceValues(JLjava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14

    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_1a
    move-object v7, p3

    move-object v8, p4

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceValuesToDouble(JLjava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)D
    .registers 18

    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;

    invoke-virtual/range {p0 .. p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToDoubleTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public reduceValuesToInt(JLjava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)I
    .registers 16

    if-eqz p3, :cond_21

    if-eqz p5, :cond_21

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    return p3

    :cond_21
    move-object v7, p3

    move v8, p4

    move-object v9, p5

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public reduceValuesToLong(JLjava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)J
    .registers 18

    if-eqz p3, :cond_22

    if-eqz p6, :cond_22

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;

    invoke-virtual/range {p0 .. p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToLongTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_f

    if-eqz p2, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method removeEntryIf(Ljava/util/function/Predicate;)Z
    .registers 10

    if-eqz p1, :cond_30

    const/4 v0, 0x0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    if-eqz v1, :cond_2f

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_10
    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_2f

    iget-object v3, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v6, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    goto :goto_10

    :cond_2f
    return v0

    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method removeValueIf(Ljava/util/function/Predicate;)Z
    .registers 9

    if-eqz p1, :cond_2b

    const/4 v0, 0x0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    if-eqz v1, :cond_2a

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-direct {v1, v2, v3, v4, v5}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_10
    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_2a

    iget-object v3, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_29

    const/4 v0, 0x1

    :cond_29
    goto :goto_10

    :cond_2a
    return v0

    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1, p3, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .registers 9

    if-eqz p1, :cond_37

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_36

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v2, v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_f
    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_36

    iget-object v2, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    :goto_1a
    invoke-interface {p1, v4, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-virtual {p0, v4, v5, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2f

    invoke-virtual {p0, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    if-nez v6, :cond_2e

    goto :goto_2f

    :cond_2e
    goto :goto_1a

    :cond_2f
    :goto_2f
    goto :goto_f

    :cond_30
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_36
    return-void

    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->spread(I)I

    move-result v5

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v6, v0

    :goto_13
    if-eqz v6, :cond_e5

    array-length v7, v6

    move v8, v7

    if-eqz v7, :cond_e5

    add-int/lit8 v7, v8, -0x1

    and-int/2addr v7, v5

    move v9, v7

    invoke-static {v6, v7}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v10, v7

    if-nez v7, :cond_26

    goto/16 :goto_e5

    :cond_26
    iget v7, v10, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v11, v7

    const/4 v12, -0x1

    if-ne v7, v12, :cond_33

    invoke-virtual {v1, v6, v10}, Ljj$/util/concurrent/ConcurrentHashMap;->helpTransfer([Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$Node;)[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_de

    :cond_33
    const/4 v7, 0x0

    const/4 v13, 0x0

    monitor-enter v10

    :try_start_36
    invoke-static {v6, v9}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v14

    if-ne v14, v10, :cond_d0

    if-ltz v11, :cond_8a

    const/4 v13, 0x1

    move-object v14, v10

    const/4 v15, 0x0

    :goto_41
    iget v12, v14, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v12, v5, :cond_80

    iget-object v12, v14, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object/from16 v16, v12

    if-eq v12, v2, :cond_59

    if-eqz v16, :cond_56

    move-object/from16 v12, v16

    invoke-virtual {v2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_80

    goto :goto_5b

    :cond_56
    move-object/from16 v12, v16

    goto :goto_80

    :cond_59
    move-object/from16 v12, v16

    :goto_5b
    iget-object v0, v14, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    if-eqz v4, :cond_69

    if-eq v4, v0, :cond_69

    if-eqz v0, :cond_87

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_87

    :cond_69
    move-object v7, v0

    if-eqz v3, :cond_6f

    iput-object v3, v14, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    goto :goto_87

    :cond_6f
    if-eqz v15, :cond_78

    move-object/from16 v17, v0

    iget-object v0, v14, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, v15, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_87

    :cond_78
    move-object/from16 v17, v0

    iget-object v0, v14, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-static {v6, v9, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    goto :goto_87

    :cond_80
    :goto_80
    move-object v15, v14

    iget-object v0, v14, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v14, v0

    if-nez v0, :cond_88

    nop

    :cond_87
    :goto_87
    goto :goto_d0

    :cond_88
    const/4 v12, -0x1

    goto :goto_41

    :cond_8a
    instance-of v0, v10, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_c3

    const/4 v13, 0x1

    move-object v0, v10

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v12, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v14, v12

    if-eqz v12, :cond_c2

    const/4 v12, 0x0

    invoke-virtual {v14, v5, v2, v12}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v15

    move-object v12, v15

    if-eqz v15, :cond_c2

    iget-object v15, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    if-eqz v4, :cond_ad

    if-eq v4, v15, :cond_ad

    if-eqz v15, :cond_c2

    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c2

    :cond_ad
    move-object v7, v15

    if-eqz v3, :cond_b3

    iput-object v3, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->val:Ljava/lang/Object;

    goto :goto_c2

    :cond_b3
    invoke-virtual {v0, v12}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->removeTreeNode(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v17

    if-eqz v17, :cond_c2

    iget-object v2, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v2}, Ljj$/util/concurrent/ConcurrentHashMap;->untreeify(Ljj$/util/concurrent/ConcurrentHashMap$Node;)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    invoke-static {v6, v9, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->setTabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;ILjj$/util/concurrent/ConcurrentHashMap$Node;)V

    :cond_c2
    :goto_c2
    goto :goto_d0

    :cond_c3
    instance-of v0, v10, Ljj$/util/concurrent/ConcurrentHashMap$ReservationNode;

    if-nez v0, :cond_c8

    goto :goto_d0

    :cond_c8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d0
    :goto_d0
    monitor-exit v10
    :try_end_d1
    .catchall {:try_start_36 .. :try_end_d1} :catchall_e2

    if-eqz v13, :cond_de

    if-eqz v7, :cond_e5

    if-nez v3, :cond_dd

    const-wide/16 v14, -0x1

    const/4 v0, -0x1

    invoke-direct {v1, v14, v15, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->addCount(JI)V

    :cond_dd
    return-object v7

    :cond_de
    :goto_de
    move-object/from16 v2, p1

    goto/16 :goto_13

    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit v10
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0

    :cond_e5
    :goto_e5
    const/16 v16, 0x0

    return-object v16
.end method

.method public search(JLjava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 12

    if-eqz p3, :cond_1b

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_1b
    move-object v6, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public searchEntries(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 12

    if-eqz p3, :cond_1b

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_1b
    move-object v6, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public searchKeys(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 12

    if-eqz p3, :cond_1b

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchKeysTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_1b
    move-object v6, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public searchValues(JLjava/util/function/Function;)Ljava/lang/Object;
    .registers 12

    if-eqz p3, :cond_1b

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$SearchValuesTask;

    invoke-virtual {p0, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap;->batchFor(J)I

    move-result v2

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$SearchValuesTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchValuesTask;->invoke()Ljava/lang/Object;

    move-result-object p3

    return-object p3

    :cond_1b
    move-object v6, p3

    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3
.end method

.method public size()I
    .registers 6

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    const/4 v2, 0x0

    goto :goto_18

    :cond_c
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    const v2, 0x7fffffff

    goto :goto_18

    :cond_17
    long-to-int v2, v0

    :goto_18
    return v2
.end method

.method final sumCount()J
    .registers 9

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->counterCells:[Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;

    iget-wide v1, p0, Ljj$/util/concurrent/ConcurrentHashMap;->baseCount:J

    if-eqz v0, :cond_14

    array-length v3, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_14

    aget-object v5, v0, v4

    if-eqz v5, :cond_11

    iget-wide v6, v5, Ljj$/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    add-long/2addr v1, v6

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    array-length v0, v1

    :goto_9
    new-instance v3, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;

    invoke-direct {v3, v1, v0, v2, v0}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_4d

    :goto_1f
    iget-object v4, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v5, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    const-string v7, "(this Map)"

    if-ne v4, p0, :cond_29

    move-object v8, v7

    goto :goto_2a

    :cond_29
    move-object v8, v4

    :goto_2a
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3d

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v6, p0, :cond_35

    goto :goto_36

    :cond_35
    move-object v7, v6

    :goto_36
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v7

    move-object v5, v7

    if-nez v7, :cond_41

    goto :goto_4d

    :cond_41
    const/16 v7, 0x2c

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_4d
    :goto_4d
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->values:Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;

    move-object v1, v0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;

    invoke-direct {v0, p0}, Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;-><init>(Ljj$/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap;->values:Ljj$/util/concurrent/ConcurrentHashMap$ValuesView;

    return-object v0
.end method
