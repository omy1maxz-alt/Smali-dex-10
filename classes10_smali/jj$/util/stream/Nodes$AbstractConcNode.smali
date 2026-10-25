.class abstract Ljj$/util/stream/Nodes$AbstractConcNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node;


# instance fields
.field protected final left:Ljj$/util/stream/Node;

.field protected final right:Ljj$/util/stream/Node;

.field private final size:J


# direct methods
.method constructor <init>(Ljj$/util/stream/Node;Ljj$/util/stream/Node;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Nodes$AbstractConcNode;->left:Ljj$/util/stream/Node;

    iput-object p2, p0, Ljj$/util/stream/Nodes$AbstractConcNode;->right:Ljj$/util/stream/Node;

    invoke-interface {p1}, Ljj$/util/stream/Node;->count()J

    move-result-wide v0

    invoke-interface {p2}, Ljj$/util/stream/Node;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljj$/util/stream/Nodes$AbstractConcNode;->size:J

    return-void
.end method


# virtual methods
.method public count()J
    .registers 3

    iget-wide v0, p0, Ljj$/util/stream/Nodes$AbstractConcNode;->size:J

    return-wide v0
.end method

.method public getChild(I)Ljj$/util/stream/Node;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Ljj$/util/stream/Nodes$AbstractConcNode;->left:Ljj$/util/stream/Node;

    return-object v0

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Ljj$/util/stream/Nodes$AbstractConcNode;->right:Ljj$/util/stream/Node;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public synthetic getShape()Ljj$/util/stream/StreamShape;
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$-CC;->$default$getShape(Ljj$/util/stream/Node;)Ljj$/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public synthetic truncate(JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/Node$-CC;->$default$truncate(Ljj$/util/stream/Node;JJLjava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
