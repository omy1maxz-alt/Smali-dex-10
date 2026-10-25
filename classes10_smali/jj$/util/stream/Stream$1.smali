.class Ljj$/util/stream/Stream$1;
.super Ljj$/util/Spliterators$AbstractSpliterator;
.source "Stream.java"


# instance fields
.field prev:Ljava/lang/Object;

.field started:Z

.field final synthetic val$f:Ljava/util/function/UnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;)V
    .registers 6

    iput-object p4, p0, Ljj$/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    iput-object p5, p0, Ljj$/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/Stream$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/util/stream/Stream$1;->val$f:Ljava/util/function/UnaryOperator;

    iget-object v2, p0, Ljj$/util/stream/Stream$1;->prev:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_11
    iget-object v0, p0, Ljj$/util/stream/Stream$1;->val$seed:Ljava/lang/Object;

    iput-boolean v1, p0, Ljj$/util/stream/Stream$1;->started:Z

    :goto_15
    iput-object v0, p0, Ljj$/util/stream/Stream$1;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1
.end method
