.class public Lorg/mozilla/javascript/IteratorLikeIterable;
.super Ljava/lang/Object;
.source "IteratorLikeIterable.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Closeable;


# instance fields
.field private closed:Z

.field private final cx:Lorg/mozilla/javascript/Context;

.field private final iterator:Lorg/mozilla/javascript/Scriptable;

.field private final next:Lorg/mozilla/javascript/Callable;

.field private final returnFunc:Lorg/mozilla/javascript/Callable;

.field private final scope:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->cx:Lorg/mozilla/javascript/Context;

    iput-object p2, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->scope:Lorg/mozilla/javascript/Scriptable;

    const-string v0, "next"

    invoke-static {p3, v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->next:Lorg/mozilla/javascript/Callable;

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator:Lorg/mozilla/javascript/Scriptable;

    const-string v0, "return"

    invoke-static {p3, v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    instance-of p2, p1, Lorg/mozilla/javascript/Callable;

    if-eqz p2, :cond_2c

    check-cast p1, Lorg/mozilla/javascript/Callable;

    iput-object p1, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->returnFunc:Lorg/mozilla/javascript/Callable;

    goto :goto_34

    :cond_2c
    invoke-static {p3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_31
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->returnFunc:Lorg/mozilla/javascript/Callable;

    :goto_34
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Context;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->cx:Lorg/mozilla/javascript/Context;

    return-object p0
.end method

.method static synthetic access$100(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->scope:Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method static synthetic access$200(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator:Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Callable;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->next:Lorg/mozilla/javascript/Callable;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 6

    iget-boolean v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->closed:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->closed:Z

    iget-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->returnFunc:Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->cx:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator:Lorg/mozilla/javascript/Scriptable;

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;-><init>(Lorg/mozilla/javascript/IteratorLikeIterable;)V

    return-object v0
.end method
