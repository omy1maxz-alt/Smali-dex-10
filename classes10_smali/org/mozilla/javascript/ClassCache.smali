.class public Lorg/mozilla/javascript/ClassCache;
.super Ljava/lang/Object;
.source "ClassCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final AKEY:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x7b0b3bcb6923e0d7L


# instance fields
.field private associatedScope:Lorg/mozilla/javascript/Scriptable;

.field private volatile cachingIsEnabled:Z

.field private transient classAdapterCache:Ljava/util/Map;

.field private transient classTable:Ljava/util/Map;

.field private generatedClassSerial:I

.field private transient interfaceAdapterCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ClassCache"

    sput-object v0, Lorg/mozilla/javascript/ClassCache;->AKEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z

    return-void
.end method

.method public static get(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ClassCache;
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/ClassCache;->AKEY:Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ClassCache;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t find top level scope for ClassCache.get"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public associate(Lorg/mozilla/javascript/ScriptableObject;)Z
    .registers 3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_14

    sget-object v0, Lorg/mozilla/javascript/ClassCache;->AKEY:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_12

    iput-object p1, p0, Lorg/mozilla/javascript/ClassCache;->associatedScope:Lorg/mozilla/javascript/Scriptable;

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method declared-synchronized cacheInterfaceAdapter(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/Map;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/Map;

    :cond_15
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCaches()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classTable:Ljava/util/Map;

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classAdapterCache:Ljava/util/Map;

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAssociatedScope()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->associatedScope:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method getClassCacheMap()Ljava/util/Map;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classTable:Ljava/util/Map;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classTable:Ljava/util/Map;

    :cond_10
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classTable:Ljava/util/Map;

    return-object v0
.end method

.method getInterfaceAdapter(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->interfaceAdapterCache:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method getInterfaceAdapterCacheMap()Ljava/util/Map;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classAdapterCache:Ljava/util/Map;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classAdapterCache:Ljava/util/Map;

    :cond_10
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache;->classAdapterCache:Ljava/util/Map;

    return-object v0
.end method

.method public final isCachingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z

    return v0
.end method

.method public isInvokerOptimizationEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized newClassSerialNumber()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/mozilla/javascript/ClassCache;->generatedClassSerial:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/ClassCache;->generatedClassSerial:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCachingEnabled(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-ne p1, v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_c

    :try_start_9
    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->clearCaches()V

    :cond_c
    iput-boolean p1, p0, Lorg/mozilla/javascript/ClassCache;->cachingIsEnabled:Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInvokerOptimizationEnabled(Z)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
