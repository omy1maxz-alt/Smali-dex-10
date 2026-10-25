.class public Lorg/mozilla/javascript/Undefined;
.super Ljava/lang/Object;
.source "Undefined.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

.field public static final instance:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x7f9d9ecff72acbbfL


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/Undefined;

    invoke-direct {v0}, Lorg/mozilla/javascript/Undefined;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const-class v0, Lorg/mozilla/javascript/Undefined;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/mozilla/javascript/Scriptable;

    aput-object v3, v1, v2

    new-instance v2, Lorg/mozilla/javascript/Undefined$1;

    invoke-direct {v2}, Lorg/mozilla/javascript/Undefined$1;-><init>()V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    sput-object v0, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUndefined(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v0, p0, :cond_b

    sget-object v0, Lorg/mozilla/javascript/Undefined;->SCRIPTABLE_UNDEFINED:Lorg/mozilla/javascript/Scriptable;

    if-ne v0, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method
