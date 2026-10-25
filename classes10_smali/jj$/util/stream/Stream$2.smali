.class Ljj$/util/stream/Stream$2;
.super Ljj$/util/Spliterators$AbstractSpliterator;
.source "Stream.java"


# instance fields
.field finished:Z

.field prev:Ljava/lang/Object;

.field started:Z

.field final synthetic val$hasNext:Ljava/util/function/Predicate;

.field final synthetic val$next:Ljava/util/function/UnaryOperator;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;Ljava/util/function/Predicate;)V
    .registers 7

    iput-object p4, p0, Ljj$/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iput-object p5, p0, Ljj$/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    iput-object p6, p0, Ljj$/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/Stream$2;->finished:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/Stream$2;->finished:Z

    iget-boolean v0, p0, Ljj$/util/stream/Stream$2;->started:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljj$/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iget-object v1, p0, Ljj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1a

    :cond_18
    iget-object v0, p0, Ljj$/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    :goto_1a
    const/4 v1, 0x0

    iput-object v1, p0, Ljj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    :goto_1d
    iget-object v1, p0, Ljj$/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v1, p0, Ljj$/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    invoke-interface {v1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    :cond_2f
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ljj$/util/stream/Stream$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-boolean v0, p0, Ljj$/util/stream/Stream$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljj$/util/stream/Stream$2;->val$next:Ljava/util/function/UnaryOperator;

    iget-object v3, p0, Ljj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b

    :cond_17
    iget-object v0, p0, Ljj$/util/stream/Stream$2;->val$seed:Ljava/lang/Object;

    iput-boolean v2, p0, Ljj$/util/stream/Stream$2;->started:Z

    :goto_1b
    iget-object v3, p0, Ljj$/util/stream/Stream$2;->val$hasNext:Ljava/util/function/Predicate;

    invoke-interface {v3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x0

    iput-object v3, p0, Ljj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    iput-boolean v2, p0, Ljj$/util/stream/Stream$2;->finished:Z

    return v1

    :cond_29
    iput-object v0, p0, Ljj$/util/stream/Stream$2;->prev:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2
.end method
