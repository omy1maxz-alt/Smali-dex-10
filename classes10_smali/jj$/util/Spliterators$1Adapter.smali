.class Ljj$/util/Spliterators$1Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/function/Consumer;


# instance fields
.field nextElement:Ljava/lang/Object;

.field final synthetic val$spliterator:Ljj$/util/Spliterator;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/Spliterators$1Adapter;->val$spliterator:Ljj$/util/Spliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljj$/util/Spliterators$1Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/Spliterators$1Adapter;->valueReady:Z

    iput-object p1, p0, Ljj$/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Ljj$/util/Spliterators$1Adapter;->val$spliterator:Ljj$/util/Spliterator;

    invoke-interface {v0, p0}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    :cond_9
    iget-boolean v0, p0, Ljj$/util/Spliterators$1Adapter;->valueReady:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Ljj$/util/Spliterators$1Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljj$/util/Spliterators$1Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/Spliterators$1Adapter;->valueReady:Z

    iget-object v0, p0, Ljj$/util/Spliterators$1Adapter;->nextElement:Ljava/lang/Object;

    return-object v0
.end method
