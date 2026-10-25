.class public final Lorg/mozilla/javascript/IteratorLikeIterable$Itr;
.super Ljava/lang/Object;
.source "IteratorLikeIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private isDone:Z

.field private nextVal:Ljava/lang/Object;

.field final synthetic this$0:Lorg/mozilla/javascript/IteratorLikeIterable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/IteratorLikeIterable;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v0}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$300(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$000(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v2}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$100(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$200(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "done"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v2, :cond_2e

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_2e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_39

    iput-boolean v2, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->isDone:Z

    const/4 v0, 0x0

    return v0

    :cond_39
    iget-object v1, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$000(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$100(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-static {v0, v4, v1, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->nextVal:Ljava/lang/Object;

    return v2
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->isDone:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->nextVal:Ljava/lang/Object;

    return-object v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
