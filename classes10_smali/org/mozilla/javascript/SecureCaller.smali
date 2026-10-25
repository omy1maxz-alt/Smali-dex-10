.class public abstract Lorg/mozilla/javascript/SecureCaller;
.super Ljava/lang/Object;
.source "SecureCaller.java"


# static fields
.field private static final callers:Ljava/util/Map;

.field private static final secureCallerImplBytecode:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/SecureCaller;->loadBytecode()[B

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/SecureCaller;->secureCallerImplBytecode:[B

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/SecureCaller;->callers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/SecureCaller;->secureCallerImplBytecode:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/SecureCaller;->loadBytecodePrivileged()[B

    move-result-object v0

    return-object v0
.end method

.method static callSecurely(Ljava/security/CodeSource;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/SecureCaller$1;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/SecureCaller$1;-><init>(Ljava/lang/Thread;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    sget-object v1, Lorg/mozilla/javascript/SecureCaller;->callers:Ljava/util/Map;

    monitor-enter v1

    :try_start_12
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_22

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_65

    monitor-enter v2

    :try_start_24
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/SecureCaller;
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_62

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    if-nez v1, :cond_56

    :try_start_36
    new-instance v1, Lorg/mozilla/javascript/SecureCaller$2;

    invoke-direct {v1, v0, p0}, Lorg/mozilla/javascript/SecureCaller$2;-><init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/mozilla/javascript/SecureCaller;

    new-instance p0, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/security/PrivilegedActionException; {:try_start_36 .. :try_end_4a} :catch_4b
    .catchall {:try_start_36 .. :try_end_4a} :catchall_62

    goto :goto_56

    :catch_4b
    move-exception p0

    :try_start_4c
    new-instance p1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_56
    :goto_56
    move-object v3, v1

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_62

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/SecureCaller;->call(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_62
    move-exception p0

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw p0

    :catchall_65
    move-exception p0

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p0
.end method

.method private static loadBytecode()[B
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/SecureCaller$3;

    invoke-direct {v0}, Lorg/mozilla/javascript/SecureCaller$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method private static loadBytecodePrivileged()[B
    .registers 4

    const-class v0, Lorg/mozilla/javascript/SecureCaller;

    const-string v1, "SecureCallerImpl.clazz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :try_start_8
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_29

    :try_start_c
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_11
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_29

    return-object v1

    :cond_20
    :try_start_20
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_11

    :catchall_24
    move-exception v1

    :try_start_25
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_31

    :goto_30
    throw v1

    :goto_31
    goto :goto_30
.end method


# virtual methods
.method public abstract call(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
