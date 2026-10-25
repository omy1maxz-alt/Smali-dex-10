.class Ljj$/util/stream/IntPipeline$9;
.super Ljj$/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# instance fields
.field final synthetic this$0:Ljj$/util/stream/IntPipeline;

.field final synthetic val$predicate:Ljava/util/function/IntPredicate;


# direct methods
.method constructor <init>(Ljj$/util/stream/IntPipeline;Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V
    .registers 6

    iput-object p1, p0, Ljj$/util/stream/IntPipeline$9;->this$0:Ljj$/util/stream/IntPipeline;

    iput-object p5, p0, Ljj$/util/stream/IntPipeline$9;->val$predicate:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p2, p3, p4}, Ljj$/util/stream/IntPipeline$StatelessOp;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjj$/util/stream/Sink;)Ljj$/util/stream/Sink;
    .registers 4

    new-instance v0, Ljj$/util/stream/IntPipeline$9$1;

    invoke-direct {v0, p0, p2}, Ljj$/util/stream/IntPipeline$9$1;-><init>(Ljj$/util/stream/IntPipeline$9;Ljj$/util/stream/Sink;)V

    return-object v0
.end method
