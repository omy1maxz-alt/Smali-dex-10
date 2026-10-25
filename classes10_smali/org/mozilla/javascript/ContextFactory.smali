.class public Lorg/mozilla/javascript/ContextFactory;
.super Ljava/lang/Object;
.source "ContextFactory.java"


# static fields
.field private static global:Lorg/mozilla/javascript/ContextFactory;

.field private static volatile hasCustomGlobal:Z


# instance fields
.field private applicationClassLoader:Ljava/lang/ClassLoader;

.field private disabledListening:Z

.field private volatile listeners:Ljava/lang/Object;

.field private final listenersLock:Ljava/lang/Object;

.field private volatile sealed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/ContextFactory;

    invoke-direct {v0}, Lorg/mozilla/javascript/ContextFactory;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listenersLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Lorg/mozilla/javascript/ContextFactory;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;

    return-object v0
.end method

.method static synthetic access$002(Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/ContextFactory;
    .registers 1

    sput-object p0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;

    return-object p0
.end method

.method public static getGlobal()Lorg/mozilla/javascript/ContextFactory;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;

    return-object v0
.end method

.method public static declared-synchronized getGlobalSetter()Lorg/mozilla/javascript/ContextFactory$GlobalSetter;
    .registers 2

    const-class v0, Lorg/mozilla/javascript/ContextFactory;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    if-nez v1, :cond_11

    const/4 v1, 0x1

    sput-boolean v1, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    new-instance v1, Lorg/mozilla/javascript/ContextFactory$1GlobalSetterImpl;

    invoke-direct {v1}, Lorg/mozilla/javascript/ContextFactory$1GlobalSetterImpl;-><init>()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    monitor-exit v0

    return-object v1

    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static hasExplicitGlobal()Z
    .registers 1

    sget-boolean v0, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    return v0
.end method

.method public static declared-synchronized initGlobal(Lorg/mozilla/javascript/ContextFactory;)V
    .registers 3

    const-class v0, Lorg/mozilla/javascript/ContextFactory;

    monitor-enter v0

    if-eqz p0, :cond_18

    :try_start_5
    sget-boolean v1, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    if-nez v1, :cond_10

    const/4 v1, 0x1

    sput-boolean v1, Lorg/mozilla/javascript/ContextFactory;->hasCustomGlobal:Z

    sput-object p0, Lorg/mozilla/javascript/ContextFactory;->global:Lorg/mozilla/javascript/ContextFactory;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_16

    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_16
    move-exception p0

    goto :goto_1e

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_16

    :goto_1e
    monitor-exit v0

    throw p0
.end method

.method private static isDom3Present()Z
    .registers 6

    const-string v0, "org.w3c.dom.Node"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    const-string v2, "getUserData"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_16} :catch_17

    return v3

    :catch_17
    return v1
.end method


# virtual methods
.method public final addListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lorg/mozilla/javascript/ContextFactory;->disabledListening:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/mozilla/javascript/Kit;->addListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final checkNotSealed()V
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ContextFactory;->sealed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/ContextFactory$1;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/ContextFactory$1;-><init>(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/GeneratedClassLoader;

    return-object p1
.end method

.method final disableContextListening()V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lorg/mozilla/javascript/ContextFactory;->disabledListening:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-interface {p1, p2, p3, p4, p5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/ConsString;

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public final enter()Lorg/mozilla/javascript/Context;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public enterContext()Lorg/mozilla/javascript/Context;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public final enterContext(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;
    .registers 2

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;

    move-result-object p1

    return-object p1
.end method

.method public final exit()V
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-void
.end method

.method public final getApplicationClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->applicationClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method protected getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->isDom3Present()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "org.mozilla.javascript.xmlimpl.XMLLibImpl"

    invoke-static {v0}, Lorg/mozilla/javascript/xml/XMLLib$Factory;->create(Ljava/lang/String;)Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasFeature(Lorg/mozilla/javascript/Context;I)Z
    .registers 6

    const/16 v0, 0x78

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_52

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_11  #0x14
    return v1

    :pswitch_12  #0x11, 0x12, 0x13
    return v2

    :pswitch_13  #0x10
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    :pswitch_1e  #0xf
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    const/16 p2, 0xaa

    if-gt p1, p2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    :pswitch_28  #0xe
    return v1

    :pswitch_29  #0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd
    return v2

    :pswitch_2a  #0x6
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    if-eqz p1, :cond_36

    const/16 p2, 0xa0

    if-lt p1, p2, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :cond_36
    :goto_36
    :pswitch_36  #0x5
    return v1

    :pswitch_37  #0x4
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    if-ne p1, v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    :pswitch_3f  #0x3
    return v1

    :pswitch_40  #0x2
    return v2

    :pswitch_41  #0x1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p1

    const/16 p2, 0x64

    if-eq p1, p2, :cond_51

    const/16 p2, 0x6e

    if-eq p1, p2, :cond_51

    if-ne p1, v0, :cond_50

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :cond_51
    :goto_51
    return v1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_41  #00000001
        :pswitch_40  #00000002
        :pswitch_3f  #00000003
        :pswitch_37  #00000004
        :pswitch_36  #00000005
        :pswitch_2a  #00000006
        :pswitch_29  #00000007
        :pswitch_29  #00000008
        :pswitch_29  #00000009
        :pswitch_29  #0000000a
        :pswitch_29  #0000000b
        :pswitch_29  #0000000c
        :pswitch_29  #0000000d
        :pswitch_28  #0000000e
        :pswitch_1e  #0000000f
        :pswitch_13  #00000010
        :pswitch_12  #00000011
        :pswitch_12  #00000012
        :pswitch_12  #00000013
        :pswitch_11  #00000014
    .end packed-switch
.end method

.method public final initApplicationClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3

    if-eqz p1, :cond_22

    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->testIfCanLoadRhinoClasses(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->applicationClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    iput-object p1, p0, Lorg/mozilla/javascript/ContextFactory;->applicationClassLoader:Ljava/lang/ClassLoader;

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "applicationClassLoader can only be set once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loader can not resolve Rhino classes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "loader is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isSealed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ContextFactory;->sealed:Z

    return v0
.end method

.method protected makeContext()Lorg/mozilla/javascript/Context;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/Context;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/Context;-><init>(Lorg/mozilla/javascript/ContextFactory;)V

    return-object v0
.end method

.method protected observeInstructionCount(Lorg/mozilla/javascript/Context;I)V
    .registers 3

    return-void
.end method

.method protected onContextCreated(Lorg/mozilla/javascript/Context;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_3
    invoke-static {v0, v1}, Lorg/mozilla/javascript/Kit;->getListener(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ContextFactory$Listener;

    if-nez v2, :cond_c

    return-void

    :cond_c
    invoke-interface {v2, p1}, Lorg/mozilla/javascript/ContextFactory$Listener;->contextCreated(Lorg/mozilla/javascript/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method protected onContextReleased(Lorg/mozilla/javascript/Context;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_3
    invoke-static {v0, v1}, Lorg/mozilla/javascript/Kit;->getListener(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ContextFactory$Listener;

    if-nez v2, :cond_c

    return-void

    :cond_c
    invoke-interface {v2, p1}, Lorg/mozilla/javascript/ContextFactory$Listener;->contextReleased(Lorg/mozilla/javascript/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public final removeListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    iget-object v0, p0, Lorg/mozilla/javascript/ContextFactory;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lorg/mozilla/javascript/ContextFactory;->disabledListening:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/mozilla/javascript/Kit;->removeListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/ContextFactory;->listeners:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final seal()V
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ContextFactory;->checkNotSealed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ContextFactory;->sealed:Z

    return-void
.end method
