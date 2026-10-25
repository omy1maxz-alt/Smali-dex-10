.class public abstract Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;
.super Ljava/lang/Object;
.source "CachingModuleScriptProviderBase.java"

# interfaces
.implements Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;
.implements Ljava/io/Serializable;


# static fields
.field private static final loadConcurrencyLevel:I

.field private static final loadLockCount:I

.field private static final loadLockMask:I

.field private static final loadLockShift:I

.field private static final serialVersionUID:J = -0x1L


# instance fields
.field private final loadLocks:[Ljava/lang/Object;

.field private final moduleSourceProvider:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    sput v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadConcurrencyLevel:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_e
    sget v2, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadConcurrencyLevel:I

    if-ge v0, v2, :cond_17

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_17
    rsub-int/lit8 v1, v1, 0x20

    sput v1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockShift:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockMask:I

    sput v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockCount:I

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockCount:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLocks:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLocks:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_19
    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->moduleSourceProvider:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;

    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_c

    :cond_6
    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_c
    return p0
.end method

.method protected static getConcurrencyLevel()I
    .registers 1

    sget v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockCount:I

    return v0
.end method

.method private static getValidator(Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;)Ljava/lang/Object;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->getValidator()Ljava/lang/Object;

    move-result-object p0

    :goto_8
    return-object p0
.end method


# virtual methods
.method protected abstract getLoadedModule(Ljava/lang/String;)Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
.end method

.method public getModuleScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/commonjs/module/ModuleScript;
    .registers 11

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getLoadedModule(Ljava/lang/String;)Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getValidator(Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_11

    iget-object p3, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->moduleSourceProvider:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;

    invoke-interface {p3, p2, p5, v1}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;->loadSource(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p3

    goto :goto_17

    :cond_11
    iget-object p5, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->moduleSourceProvider:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;

    invoke-interface {p5, p3, p4, v1}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;->loadSource(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p3

    :goto_17
    sget-object p4, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;->NOT_MODIFIED:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    if-ne p3, p4, :cond_20

    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->getModule()Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object p1

    return-object p1

    :cond_20
    if-nez p3, :cond_24

    const/4 p1, 0x0

    return-object p1

    :cond_24
    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getReader()Ljava/io/Reader;

    move-result-object p4

    :try_start_28
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p5

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLocks:[Ljava/lang/Object;

    sget v2, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockShift:I

    ushr-int/2addr p5, v2

    sget v2, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockMask:I

    and-int/2addr p5, v2

    aget-object p5, v0, p5

    monitor-enter p5
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_7d

    :try_start_37
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getLoadedModule(Ljava/lang/String;)Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-static {v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getValidator(Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->getModule()Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object p1

    monitor-exit p5
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_7a

    if-eqz p4, :cond_51

    invoke-virtual {p4}, Ljava/io/Reader;->close()V

    :cond_51
    return-object p1

    :cond_52
    :try_start_52
    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getUri()Ljava/net/URI;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getSecurityDomain()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, p4, v2, v3, v4}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getBase()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;-><init>(Lorg/mozilla/javascript/Script;Ljava/net/URI;Ljava/net/URI;)V

    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getValidator()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->putLoadedModule(Ljava/lang/String;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V

    monitor-exit p5
    :try_end_74
    .catchall {:try_start_52 .. :try_end_74} :catchall_7a

    if-eqz p4, :cond_79

    invoke-virtual {p4}, Ljava/io/Reader;->close()V

    :cond_79
    return-object v1

    :catchall_7a
    move-exception p1

    :try_start_7b
    monitor-exit p5
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    :try_start_7c
    throw p1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception p1

    :try_start_7e
    throw p1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p2

    if-eqz p4, :cond_8a

    :try_start_82
    invoke-virtual {p4}, Ljava/io/Reader;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8a
    :goto_8a
    throw p2
.end method

.method protected abstract putLoadedModule(Ljava/lang/String;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V
.end method
