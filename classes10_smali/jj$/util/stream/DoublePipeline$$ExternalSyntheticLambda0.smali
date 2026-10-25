.class public final synthetic Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic f$0:Ljj$/util/stream/Sink;


# direct methods
.method public synthetic constructor <init>(Ljj$/util/stream/Sink;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;->f$0:Ljj$/util/stream/Sink;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/DoublePipeline$$ExternalSyntheticLambda0;->f$0:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Sink;->accept(D)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method
