.class public abstract Lokin/ForwardingSink;
.super Ljava/lang/Object;
.source "ForwardingSink.java"

# interfaces
.implements Lokin/Sink;


# instance fields
.field private final delegate:Lokin/Sink;


# direct methods
.method public constructor <init>(Lokin/Sink;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lokin/ForwardingSink;->delegate:Lokin/Sink;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokin/ForwardingSink;->delegate:Lokin/Sink;

    invoke-interface {v0}, Lokin/Sink;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokin/ForwardingSink;->delegate:Lokin/Sink;

    invoke-interface {v0}, Lokin/Sink;->flush()V

    return-void
.end method

.method public timeout()Lokin/Timeout;
    .registers 2

    iget-object v0, p0, Lokin/ForwardingSink;->delegate:Lokin/Sink;

    invoke-interface {v0}, Lokin/Sink;->timeout()Lokin/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokin/ForwardingSink;->delegate:Lokin/Sink;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokin/Buffer;J)V
    .registers 5

    iget-object v0, p0, Lokin/ForwardingSink;->delegate:Lokin/Sink;

    invoke-interface {v0, p1, p2, p3}, Lokin/Sink;->write(Lokin/Buffer;J)V

    return-void
.end method
