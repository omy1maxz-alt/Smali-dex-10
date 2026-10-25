.class public Lorg/mozilla/javascript/PolicySecurityController;
.super Lorg/mozilla/javascript/SecurityController;
.source "PolicySecurityController.java"


# static fields
.field private static final callers:Ljava/util/Map;

.field private static final secureCallerImplBytecode:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/PolicySecurityController;->loadBytecode()[B

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/PolicySecurityController;->secureCallerImplBytecode:[B

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/PolicySecurityController;->callers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/SecurityController;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/PolicySecurityController;->secureCallerImplBytecode:[B

    return-object v0
.end method

.method private static loadBytecode()[B
    .registers 7

    const-class v0, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/mozilla/classfile/ClassFileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Impl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<generated>"

    invoke-direct {v1, v2, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "<init>"

    const-string v3, "()V"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    const/16 v5, 0xb7

    invoke-virtual {v1, v5, v0, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Lorg/mozilla/javascript/Callable;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "call"

    const/16 v5, 0x11

    invoke-virtual {v1, v3, v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    :goto_51
    const/4 v0, 0x6

    if-ge v4, v0, :cond_5a

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_5a
    const/16 v4, 0xb9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "org/mozilla/javascript/Callable"

    invoke-virtual {v1, v4, v5, v3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    new-instance v0, Lorg/mozilla/javascript/PolicySecurityController$2;

    invoke-direct {v0, p0, p2}, Lorg/mozilla/javascript/PolicySecurityController$2;-><init>(Lorg/mozilla/javascript/PolicySecurityController;Lorg/mozilla/javascript/Context;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    check-cast p1, Ljava/security/CodeSource;

    sget-object v1, Lorg/mozilla/javascript/PolicySecurityController;->callers:Ljava/util/Map;

    monitor-enter v1

    :try_start_10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_20

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_63

    monitor-enter v2

    :try_start_22
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_60

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    if-nez v1, :cond_54

    :try_start_34
    new-instance v1, Lorg/mozilla/javascript/PolicySecurityController$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/mozilla/javascript/PolicySecurityController$3;-><init>(Lorg/mozilla/javascript/PolicySecurityController;Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/security/PrivilegedActionException; {:try_start_34 .. :try_end_48} :catch_49
    .catchall {:try_start_34 .. :try_end_48} :catchall_60

    goto :goto_54

    :catch_49
    move-exception p1

    :try_start_4a
    new-instance p2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_54
    :goto_54
    move-object v3, v1

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4a .. :try_end_56} :catchall_60

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;->call(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1

    :catchall_63
    move-exception p1

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p1
.end method

.method public createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/PolicySecurityController$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/PolicySecurityController$1;-><init>(Lorg/mozilla/javascript/PolicySecurityController;Ljava/lang/ClassLoader;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/PolicySecurityController$Loader;

    return-object p1
.end method

.method public getDynamicSecurityDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public getStaticSecurityDomainClassInternal()Ljava/lang/Class;
    .registers 2

    const-class v0, Ljava/security/CodeSource;

    return-object v0
.end method
