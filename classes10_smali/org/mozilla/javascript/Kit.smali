.class public Lorg/mozilla/javascript/Kit;
.super Ljava/lang/Object;
.source "Kit.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-eqz p1, :cond_34

    instance-of v0, p1, [Ljava/lang/Object;

    if-nez v0, :cond_2e

    if-nez p0, :cond_9

    goto :goto_27

    :cond_9
    instance-of v0, p0, [Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_18

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object p1, v0, p0

    move-object p1, v0

    goto :goto_27

    :cond_18
    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    if-lt v0, v1, :cond_28

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v1, v0

    move-object p1, v1

    :goto_27
    return-object p1

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static classOrNull(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static codeBug()Ljava/lang/RuntimeException;
    .registers 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FAILED ASSERTION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    throw v0
.end method

.method public static codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILED ASSERTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    throw v0
.end method

.method public static getListener(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_1b

    if-nez p0, :cond_7

    return-object v1

    :cond_7
    instance-of p1, p0, [Ljava/lang/Object;

    if-nez p1, :cond_c

    return-object p0

    :cond_c
    check-cast p0, [Ljava/lang/Object;

    array-length p1, p0

    if-lt p1, v0, :cond_15

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1b
    const/4 v2, 0x1

    if-ne p1, v2, :cond_30

    instance-of p1, p0, [Ljava/lang/Object;

    if-nez p1, :cond_2b

    if-eqz p0, :cond_25

    return-object v1

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2b
    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, v2

    return-object p0

    :cond_30
    check-cast p0, [Ljava/lang/Object;

    array-length v2, p0

    if-lt v2, v0, :cond_3b

    if-ne p1, v2, :cond_38

    return-object v1

    :cond_38
    aget-object p0, p0, p1

    return-object p0

    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static initHash(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_b
    move-object p2, v0

    :goto_c
    monitor-exit p0

    return-object p2

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public static makeHashKeyFromPair(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_10

    if-eqz p1, :cond_a

    new-instance v0, Lorg/mozilla/javascript/Kit$ComplexKey;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/Kit$ComplexKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readReader(Ljava/io/Reader;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p0, 0x400

    :try_start_7
    new-array v1, p0, [C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_e
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    invoke-virtual {v2, v1, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_22

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :catchall_22
    move-exception p0

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v1

    :try_start_25
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    goto :goto_2f

    :goto_2e
    throw v1

    :goto_2f
    goto :goto_2e
.end method

.method public static readStream(Ljava/io/InputStream;I)[B
    .registers 5

    if-lez p1, :cond_26

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_18

    array-length p0, p1

    if-eq v1, p0, :cond_17

    new-array p0, v1, [B

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p0

    :cond_17
    return-object p1

    :cond_18
    add-int/2addr v1, v2

    array-length v2, p1

    if-ne v1, v2, :cond_6

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_6

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad initialBufferCapacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3e

    :goto_3d
    throw p0

    :goto_3e
    goto :goto_3d
.end method

.method public static removeListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    if-eqz p1, :cond_4c

    instance-of v0, p1, [Ljava/lang/Object;

    if-nez v0, :cond_46

    if-ne p0, p1, :cond_a

    const/4 p0, 0x0

    goto :goto_45

    :cond_a
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_45

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3f

    const/4 v3, 0x0

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-ne v2, p1, :cond_20

    aget-object p0, v0, v3

    goto :goto_45

    :cond_20
    aget-object v2, v0, v3

    if-ne v2, p1, :cond_45

    aget-object p0, v0, v1

    goto :goto_45

    :cond_27
    move v2, v1

    :cond_28
    add-int/lit8 v2, v2, -0x1

    aget-object v4, v0, v2

    if-ne v4, p1, :cond_3c

    add-int/lit8 p0, v1, -0x1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v0, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, v2, 0x1

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_45

    :cond_3c
    if-nez v2, :cond_28

    goto :goto_45

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_45
    :goto_45
    return-object p0

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_53

    :goto_52
    throw p0

    :goto_53
    goto :goto_52
.end method

.method static testIfCanLoadRhinoClasses(Ljava/lang/ClassLoader;)Z
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static xDigitToInt(II)I
    .registers 3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_9

    add-int/lit8 p0, p0, -0x30

    if-ltz p0, :cond_22

    goto :goto_1e

    :cond_9
    const/16 v0, 0x46

    if-gt p0, v0, :cond_14

    const/16 v0, 0x41

    if-gt v0, p0, :cond_22

    add-int/lit8 p0, p0, -0x37

    goto :goto_1e

    :cond_14
    const/16 v0, 0x66

    if-gt p0, v0, :cond_22

    const/16 v0, 0x61

    if-gt v0, p0, :cond_22

    add-int/lit8 p0, p0, -0x57

    :goto_1e
    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_22
    const/4 p0, -0x1

    return p0
.end method
