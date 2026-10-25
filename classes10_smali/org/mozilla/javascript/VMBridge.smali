.class public abstract Lorg/mozilla/javascript/VMBridge;
.super Ljava/lang/Object;
.source "VMBridge.java"


# static fields
.field static final instance:Lorg/mozilla/javascript/VMBridge;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/VMBridge;->makeInstance()Lorg/mozilla/javascript/VMBridge;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeInstance()Lorg/mozilla/javascript/VMBridge;
    .registers 3

    const-string v0, "org.mozilla.javascript.VMBridge_custom"

    const-string v1, "org.mozilla.javascript.jdk18.VMBridge_jdk18"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    const/4 v2, 0x2

    if-eq v1, v2, :cond_20

    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {v2}, Lorg/mozilla/javascript/Kit;->newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/VMBridge;

    if-eqz v2, :cond_1d

    return-object v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create VMBridge instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :goto_28
    throw v0

    :goto_29
    goto :goto_28
.end method


# virtual methods
.method protected abstract getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;
.end method

.method protected abstract getInterfaceProxyHelper(Lorg/mozilla/javascript/ContextFactory;[Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method protected abstract getThreadContextHelper()Ljava/lang/Object;
.end method

.method protected abstract newInterfaceProxy(Ljava/lang/Object;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
.end method

.method protected abstract setContext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)V
.end method

.method protected abstract tryToMakeAccessible(Ljava/lang/reflect/AccessibleObject;)Z
.end method
