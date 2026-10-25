.class Ljj$/util/stream/Nodes$EmptyNode$OfRef;
.super Ljj$/util/stream/Nodes$EmptyNode;
.source "Nodes.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljj$/util/stream/Nodes-IA;)V
    .registers 2

    invoke-direct {p0}, Ljj$/util/stream/Nodes$EmptyNode$OfRef;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljj$/util/stream/Nodes$EmptyNode;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic forEach(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/Nodes$EmptyNode;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-static {}, Ljj$/util/Spliterators;->emptySpliterator()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
