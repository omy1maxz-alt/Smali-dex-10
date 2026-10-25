.class public final synthetic Ljj$/util/stream/Collectors$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToIntFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda28;->f$0:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda28;->f$0:Ljava/util/function/ToIntFunction;

    check-cast p1, Ljj$/util/IntSummaryStatistics;

    invoke-static {v0, p1, p2}, Ljj$/util/stream/Collectors;->lambda$summarizingInt$70(Ljava/util/function/ToIntFunction;Ljj$/util/IntSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
