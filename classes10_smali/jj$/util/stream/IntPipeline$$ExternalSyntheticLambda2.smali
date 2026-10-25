.class public final synthetic Ljj$/util/stream/IntPipeline$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, Ljj$/util/IntSummaryStatistics;

    invoke-virtual {p1, p2}, Ljj$/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method
