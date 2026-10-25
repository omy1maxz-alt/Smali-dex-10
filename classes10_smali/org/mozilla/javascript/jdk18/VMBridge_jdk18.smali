.class public Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;
.super Lorg/mozilla/javascript/VMBridge;
.source "VMBridge_jdk18.java"


# static fields
.field private static final contextLocal:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;->contextLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/VMBridge;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;
    .registers 3

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Lorg/mozilla/javascript/Context;

    return-object p1
.end method

.method protected getInterfaceProxyHelper(Lorg/mozilla/javascript/ContextFactory;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    const/4 p1, 0x0

    aget-object v0, p2, p1

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x1

    :try_start_c
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/reflect/InvocationHandler;

    aput-object v1, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected getThreadContextHelper()Ljava/lang/Object;
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;->contextLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_10
    return-object v1
.end method

.method protected newInterfaceProxy(Ljava/lang/Object;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 13

    check-cast p1, Ljava/lang/reflect/Constructor;

    new-instance v6, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$1;-><init>(Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;Ljava/lang/Object;Lorg/mozilla/javascript/InterfaceAdapter;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;)V

    const/4 p2, 0x1

    :try_start_e
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v6, p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_17} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_17} :catch_1f
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1f
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_26
    move-exception p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected setContext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)V
    .registers 4

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method

.method protected tryToMakeAccessible(Ljava/lang/reflect/AccessibleObject;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p1

    return p1
.end method
