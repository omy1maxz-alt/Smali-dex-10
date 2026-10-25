.class abstract Ljj$/util/stream/Nodes$EmptyNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Node;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public count()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forEach(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public synthetic getChild(I)Ljj$/util/stream/Node;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Node$-CC;->$default$getChild(Ljj$/util/stream/Node;I)Ljj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getChildCount()I
    .registers 2

    invoke-static {p0}, Ljj$/util/stream/Node$-CC;->$default$getChildCount(Ljj$/util/stream/Node;)I

    move-result v0

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
