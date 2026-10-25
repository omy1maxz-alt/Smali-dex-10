.class public final Ljj$/sun/misc/DesugarUnsafe;
.super Ljava/lang/Object;
.source "DesugarUnsafe.java"


# static fields
.field private static final theUnsafeWrapper:Ljj$/sun/misc/DesugarUnsafe;


# instance fields
.field private final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Ljj$/sun/misc/DesugarUnsafe;->getUnsafeField()Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_8
    new-instance v1, Ljj$/sun/misc/DesugarUnsafe;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;

    invoke-direct {v1, v2}, Ljj$/sun/misc/DesugarUnsafe;-><init>(Lsun/misc/Unsafe;)V

    sput-object v1, Ljj$/sun/misc/DesugarUnsafe;->theUnsafeWrapper:Ljj$/sun/misc/DesugarUnsafe;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_16} :catch_18

    nop

    return-void

    :catch_18
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Couldn\'t get the Unsafe"

    invoke-direct {v2, v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method public static getUnsafe()Ljj$/sun/misc/DesugarUnsafe;
    .registers 1

    sget-object v0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafeWrapper:Ljj$/sun/misc/DesugarUnsafe;

    return-object v0
.end method

.method private static getUnsafeField()Ljava/lang/reflect/Field;
    .registers 7

    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_30

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    const-class v5, Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return-object v4

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_30
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Couldn\'t find the Unsafe"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addressSize()I
    .registers 2

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method public allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public allocateMemory(J)J
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .registers 3

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .registers 3

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public compareAndSetInt(Ljava/lang/Object;JII)Z
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method public compareAndSetLong(Ljava/lang/Object;JJJ)Z
    .registers 16

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method public compareAndSetObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Ljj$/com/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public compareAndSwapInt(Ljava/lang/Object;JII)Z
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method public compareAndSwapLong(Ljava/lang/Object;JJJ)Z
    .registers 16

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method public compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Ljj$/com/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public copyMemory(JJJ)V
    .registers 14

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    return-void
.end method

.method public copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .registers 13

    const/4 v0, 0x0

    :goto_1
    int-to-long v1, v0

    cmp-long v3, v1, p7

    if-gez v3, :cond_23

    int-to-long v1, v0

    add-long/2addr v1, p2

    if-nez p1, :cond_f

    invoke-virtual {p0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->getByte(J)B

    move-result v1

    goto :goto_13

    :cond_f
    invoke-virtual {p0, p1, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    :goto_13
    if-nez p4, :cond_1b

    int-to-long v2, v0

    add-long/2addr v2, p5

    invoke-virtual {p0, v2, v3, v1}, Ljj$/sun/misc/DesugarUnsafe;->putByte(JB)V

    goto :goto_20

    :cond_1b
    int-to-long v2, v0

    add-long/2addr v2, p5

    invoke-virtual {p0, p4, v2, v3, v1}, Ljj$/sun/misc/DesugarUnsafe;->putByte(Ljava/lang/Object;JB)V

    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public ensureClassInitialized(Ljava/lang/Class;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public freeMemory(J)V
    .registers 4

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    return-void
.end method

.method public getAndAddInt(Ljava/lang/Object;JI)I
    .registers 12

    nop

    :goto_1
    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v5

    iget-object v1, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    add-int v6, v5, p4

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_14

    return v5

    :cond_14
    move-object p1, v2

    move-wide p2, v3

    goto :goto_1
.end method

.method public getAndAddLong(Ljava/lang/Object;JJ)J
    .registers 15

    nop

    :goto_1
    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v5

    iget-object v1, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    add-long v7, v5, p4

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    if-eqz p1, :cond_14

    return-wide v5

    :cond_14
    move-object p1, v2

    move-wide p2, v3

    goto :goto_1
.end method

.method public getAndSetInt(Ljava/lang/Object;JI)I
    .registers 12

    nop

    :goto_1
    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v5

    iget-object v1, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p1

    if-eqz p1, :cond_13

    return v5

    :cond_13
    move-object p1, v2

    move-wide p2, v3

    move p4, v6

    goto :goto_1
.end method

.method public getAndSetLong(Ljava/lang/Object;JJ)J
    .registers 15

    nop

    :goto_1
    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v5

    iget-object v1, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v2, p1

    move-wide v3, p2

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    if-eqz p1, :cond_13

    return-wide v5

    :cond_13
    move-object p1, v2

    move-wide p2, v3

    move-wide p4, v7

    goto :goto_1
.end method

.method public getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .registers 12

    nop

    :goto_1
    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    iget-object v1, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v2, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Ljj$/com/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-object v5

    :cond_13
    move-object p1, v2

    move-wide p2, v3

    move-object p4, v6

    goto :goto_1
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public getByte(J)B
    .registers 4

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/Object;J)B
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public getChar(J)C
    .registers 4

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getChar(J)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/Object;J)C
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v0

    return v0
.end method

.method public getDouble(J)D
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(J)F
    .registers 4

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method public getInt(J)I
    .registers 4

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/Object;J)I
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public getIntVolatile(Ljava/lang/Object;J)I
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public getLong(J)J
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/Object;J)J
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongVolatile(Ljava/lang/Object;J)J
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAcquire(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShort(J)S
    .registers 4

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/Object;J)S
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    return v0
.end method

.method public objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 6

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0
    :try_end_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Cannot find field:"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public pageSize()I
    .registers 2

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    return v0
.end method

.method public park(ZJ)V
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->park(ZJ)V

    return-void
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public putByte(JB)V
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putChar(JC)V
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putChar(JC)V

    return-void
.end method

.method public putChar(Ljava/lang/Object;JC)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    return-void
.end method

.method public putDouble(JD)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putDouble(JD)V

    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public putFloat(JF)V
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putFloat(JF)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public putInt(JI)V
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(JI)V

    return-void
.end method

.method public putInt(Ljava/lang/Object;JI)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public putIntVolatile(Ljava/lang/Object;JI)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    return-void
.end method

.method public putLong(JJ)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    return-void
.end method

.method public putLong(Ljava/lang/Object;JJ)V
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putLongVolatile(Ljava/lang/Object;JJ)V
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public putObjectRelease(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public putOrderedInt(Ljava/lang/Object;JI)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public putOrderedLong(Ljava/lang/Object;JJ)V
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public putShort(JS)V
    .registers 5

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putShort(JS)V

    return-void
.end method

.method public putShort(Ljava/lang/Object;JS)V
    .registers 6

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public setMemory(JJB)V
    .registers 12

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->setMemory(JJB)V

    return-void
.end method

.method public unpark(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    return-void
.end method
