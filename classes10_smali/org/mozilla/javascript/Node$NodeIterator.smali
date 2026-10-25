.class public Lorg/mozilla/javascript/Node$NodeIterator;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private cursor:Lorg/mozilla/javascript/Node;

.field private prev:Lorg/mozilla/javascript/Node;

.field private prev2:Lorg/mozilla/javascript/Node;

.field private removed:Z

.field final synthetic this$0:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Node;)V
    .registers 3

    iput-object p1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/mozilla/javascript/Node;->access$000()Lorg/mozilla/javascript/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    iget-object p1, p1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iput-object p1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    return-void
.end method


# virtual methods
.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p1}, Ljj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Ljj$/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node$NodeIterator;->forEachRemaining(Ljj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljj$/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Ljj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node$NodeIterator;->next()Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/mozilla/javascript/Node;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iput-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iget-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    return-object v0

    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    invoke-static {}, Lorg/mozilla/javascript/Node;->access$000()Lorg/mozilla/javascript/Node;

    move-result-object v1

    if-eq v0, v1, :cond_34

    iget-boolean v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    iget-object v2, v1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-ne v0, v2, :cond_19

    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v0, v1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    goto :goto_2b

    :cond_19
    iget-object v2, v1, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v0, v1, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    goto :goto_2b

    :cond_25
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    :goto_2b
    return-void

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() already called for current element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
