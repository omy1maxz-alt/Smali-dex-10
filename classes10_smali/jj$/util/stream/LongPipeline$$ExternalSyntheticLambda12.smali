.class public final synthetic Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic f$0:Ljj$/util/stream/Sink;


# direct methods
.method public synthetic constructor <init>(Ljj$/util/stream/Sink;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;->f$0:Ljj$/util/stream/Sink;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;->f$0:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljj$/util/stream/Sink;->accept(J)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method
