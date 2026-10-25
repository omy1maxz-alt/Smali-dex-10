.class final Ljj$/util/stream/Streams$StreamBuilderImpl;
.super Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljj$/util/stream/Stream$Builder;


# instance fields
.field buffer:Ljj$/util/stream/SpinedBuffer;

.field first:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljj$/util/stream/Streams-IA;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljj$/util/stream/Streams-IA;)V

    iput-object p1, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    if-nez v0, :cond_d

    iput-object p1, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    goto :goto_2e

    :cond_d
    iget v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    if-lez v0, :cond_2f

    iget-object v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer;

    if-nez v0, :cond_29

    new-instance v0, Ljj$/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljj$/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer;

    iget-object v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer;

    iget-object v1, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljj$/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    iget v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    :cond_29
    iget-object v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer;

    invoke-virtual {v0, p1}, Ljj$/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    :goto_2e
    return-void

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Ljj$/util/stream/Stream$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$StreamBuilderImpl;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public build()Ljj$/util/stream/Stream;
    .registers 4

    iget v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    if-ltz v0, :cond_1f

    iget v1, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    invoke-static {p0, v2}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v1

    goto :goto_1e

    :cond_14
    iget-object v1, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->buffer:Ljj$/util/stream/SpinedBuffer;

    invoke-virtual {v1}, Ljj$/util/stream/SpinedBuffer;->spliterator()Ljj$/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v2}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v1

    :goto_1e
    return-object v1

    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    :cond_10
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Ljj$/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
