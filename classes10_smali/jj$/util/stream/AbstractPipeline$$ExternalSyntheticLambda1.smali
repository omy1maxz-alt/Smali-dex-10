.class public final synthetic Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljj$/util/Spliterator;


# direct methods
.method public synthetic constructor <init>(Ljj$/util/Spliterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;->f$0:Ljj$/util/Spliterator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;->f$0:Ljj$/util/Spliterator;

    invoke-static {v0}, Ljj$/util/stream/AbstractPipeline;->lambda$wrapSpliterator$1(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
