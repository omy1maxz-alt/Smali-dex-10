.class Ljj$/util/stream/DistinctOps$1$2;
.super Ljj$/util/stream/Sink$ChainedReference;
.source "DistinctOps.java"


# instance fields
.field seen:Ljava/util/Set;

.field final synthetic this$0:Ljj$/util/stream/DistinctOps$1;


# direct methods
.method constructor <init>(Ljj$/util/stream/DistinctOps$1;Ljj$/util/stream/Sink;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/stream/DistinctOps$1$2;->this$0:Ljj$/util/stream/DistinctOps$1;

    invoke-direct {p0, p2}, Ljj$/util/stream/Sink$ChainedReference;-><init>(Ljj$/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$2;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0, p1}, Ljj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public begin(J)V
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljj$/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$2;->downstream:Ljj$/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public end()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/DistinctOps$1$2;->seen:Ljava/util/Set;

    iget-object v0, p0, Ljj$/util/stream/DistinctOps$1$2;->downstream:Ljj$/util/stream/Sink;

    invoke-interface {v0}, Ljj$/util/stream/Sink;->end()V

    return-void
.end method
