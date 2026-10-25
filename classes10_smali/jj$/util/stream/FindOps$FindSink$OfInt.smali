.class final Ljj$/util/stream/FindOps$FindSink$OfInt;
.super Ljj$/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfInt;


# static fields
.field static final OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

.field static final OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljj$/util/stream/FindOps$FindOp;

    sget-object v2, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    invoke-static {}, Ljj$/util/OptionalInt;->empty()Ljj$/util/OptionalInt;

    move-result-object v3

    new-instance v4, Ljj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Ljj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/FindOps$FindOp;-><init>(ZLjj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Ljj$/util/stream/FindOps$FindSink$OfInt;->OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;

    new-instance v1, Ljj$/util/stream/FindOps$FindOp;

    sget-object v3, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    invoke-static {}, Ljj$/util/OptionalInt;->empty()Ljj$/util/OptionalInt;

    move-result-object v4

    new-instance v5, Ljj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Ljj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ljj$/util/stream/FindOps$FindSink$OfInt$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/FindOps$FindOp;-><init>(ZLjj$/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Ljj$/util/stream/FindOps$FindSink$OfInt;->OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/stream/FindOps$FindSink$OfInt;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Integer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/FindOps$FindSink$OfInt;->get()Ljj$/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljj$/util/OptionalInt;
    .registers 2

    iget-boolean v0, p0, Ljj$/util/stream/FindOps$FindSink$OfInt;->hasValue:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljj$/util/stream/FindOps$FindSink$OfInt;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljj$/util/OptionalInt;->of(I)Ljj$/util/OptionalInt;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method
