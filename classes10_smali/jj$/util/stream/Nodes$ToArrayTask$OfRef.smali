.class final Ljj$/util/stream/Nodes$ToArrayTask$OfRef;
.super Ljj$/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljj$/util/stream/Node;[Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljj$/util/stream/Nodes$ToArrayTask;-><init>(Ljj$/util/stream/Node;I)V

    iput-object p2, p0, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljj$/util/stream/Node;[Ljava/lang/Object;ILjj$/util/stream/Nodes-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljj$/util/stream/Node;[Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor <init>(Ljj$/util/stream/Nodes$ToArrayTask$OfRef;Ljj$/util/stream/Node;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/stream/Nodes$ToArrayTask;-><init>(Ljj$/util/stream/Nodes$ToArrayTask;Ljj$/util/stream/Node;I)V

    iget-object v0, p1, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iput-object v0, p0, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method copyNodeToArray()V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->node:Ljj$/util/stream/Node;

    iget-object v1, p0, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    iget v2, p0, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->offset:I

    invoke-interface {v0, v1, v2}, Ljj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method makeChild(II)Ljj$/util/stream/Nodes$ToArrayTask$OfRef;
    .registers 5

    new-instance v0, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;

    iget-object v1, p0, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->node:Ljj$/util/stream/Node;

    invoke-interface {v1, p1}, Ljj$/util/stream/Node;->getChild(I)Ljj$/util/stream/Node;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljj$/util/stream/Nodes$ToArrayTask$OfRef;Ljj$/util/stream/Node;I)V

    return-object v0
.end method

.method bridge synthetic makeChild(II)Ljj$/util/stream/Nodes$ToArrayTask;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->makeChild(II)Ljj$/util/stream/Nodes$ToArrayTask$OfRef;

    move-result-object p1

    return-object p1
.end method
