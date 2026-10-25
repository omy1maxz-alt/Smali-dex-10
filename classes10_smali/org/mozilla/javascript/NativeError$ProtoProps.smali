.class final Lorg/mozilla/javascript/NativeError$ProtoProps;
.super Ljava/lang/Object;
.source "NativeError.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final GET_PREPARE_STACK:Ljava/lang/reflect/Method;

.field static final GET_STACK_LIMIT:Ljava/lang/reflect/Method;

.field static final KEY:Ljava/lang/String; = "_ErrorPrototypeProps"

.field static final SET_PREPARE_STACK:Ljava/lang/reflect/Method;

.field static final SET_STACK_LIMIT:Ljava/lang/reflect/Method;

.field private static final serialVersionUID:J = 0x1a77aa91307f85d3L


# instance fields
.field private prepareStackTrace:Lorg/mozilla/javascript/Function;

.field private stackTraceLimit:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-class v0, Ljava/lang/Object;

    const-class v1, Lorg/mozilla/javascript/Scriptable;

    :try_start_4
    const-class v2, Lorg/mozilla/javascript/NativeError$ProtoProps;

    const-string v3, "getStackTraceLimit"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/mozilla/javascript/NativeError$ProtoProps;->GET_STACK_LIMIT:Ljava/lang/reflect/Method;

    const-class v2, Lorg/mozilla/javascript/NativeError$ProtoProps;

    const-string/jumbo v3, "setStackTraceLimit"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v6

    aput-object v0, v7, v4

    invoke-virtual {v2, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/mozilla/javascript/NativeError$ProtoProps;->SET_STACK_LIMIT:Ljava/lang/reflect/Method;

    const-class v2, Lorg/mozilla/javascript/NativeError$ProtoProps;

    const-string v3, "getPrepareStackTrace"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v1, v7, v6

    invoke-virtual {v2, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/mozilla/javascript/NativeError$ProtoProps;->GET_PREPARE_STACK:Ljava/lang/reflect/Method;

    const-class v2, Lorg/mozilla/javascript/NativeError$ProtoProps;

    const-string/jumbo v3, "setPrepareStackTrace"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v1, v5, v6

    aput-object v0, v5, v4

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeError$ProtoProps;->SET_PREPARE_STACK:Ljava/lang/reflect/Method;
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/NativeError$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeError$ProtoProps;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrepareStackTrace(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeError$ProtoProps;->getPrepareStackTrace()Lorg/mozilla/javascript/Function;

    move-result-object p1

    if-nez p1, :cond_8

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_8
    return-object p1
.end method

.method public getPrepareStackTrace()Lorg/mozilla/javascript/Function;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->prepareStackTrace:Lorg/mozilla/javascript/Function;

    return-object v0
.end method

.method public getStackTraceLimit()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    return v0
.end method

.method public getStackTraceLimit(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    iget p1, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    if-ltz p1, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9
    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public setPrepareStackTrace(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 3

    if-eqz p2, :cond_14

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_14

    :cond_b
    instance-of p1, p2, Lorg/mozilla/javascript/Function;

    if-eqz p1, :cond_17

    check-cast p2, Lorg/mozilla/javascript/Function;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->prepareStackTrace:Lorg/mozilla/javascript/Function;

    goto :goto_17

    :cond_14
    :goto_14
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->prepareStackTrace:Lorg/mozilla/javascript/Function;

    :cond_17
    :goto_17
    return-void
.end method

.method public setStackTraceLimit(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p2}, Lorg/mozilla/javascript/Context;->toNumber(Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_15

    :cond_11
    double-to-int p1, p1

    iput p1, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    goto :goto_18

    :cond_15
    :goto_15
    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/NativeError$ProtoProps;->stackTraceLimit:I

    :goto_18
    return-void
.end method
