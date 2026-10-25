.class final Ljj$/util/stream/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# static fields
.field static final BAD_SIZE:Ljava/lang/String; = "Stream size exceeds max array size"

.field private static final EMPTY_DOUBLE_ARRAY:[D

.field private static final EMPTY_DOUBLE_NODE:Ljj$/util/stream/Node$OfDouble;

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_INT_NODE:Ljj$/util/stream/Node$OfInt;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final EMPTY_LONG_NODE:Ljj$/util/stream/Node$OfLong;

.field private static final EMPTY_NODE:Ljj$/util/stream/Node;

.field static final MAX_ARRAY_SIZE:J = 0x7ffffff7L


# direct methods
.method static bridge synthetic -$$Nest$sfgetEMPTY_DOUBLE_ARRAY()[D
    .registers 1

    sget-object v0, Ljj$/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetEMPTY_INT_ARRAY()[I
    .registers 1

    sget-object v0, Ljj$/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetEMPTY_LONG_ARRAY()[J
    .registers 1

    sget-object v0, Ljj$/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljj$/util/stream/Nodes$EmptyNode$OfRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljj$/util/stream/Nodes$EmptyNode$OfRef;-><init>(Ljj$/util/stream/Nodes-IA;)V

    sput-object v0, Ljj$/util/stream/Nodes;->EMPTY_NODE:Ljj$/util/stream/Node;

    new-instance v0, Ljj$/util/stream/Nodes$EmptyNode$OfInt;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$EmptyNode$OfInt;-><init>()V

    sput-object v0, Ljj$/util/stream/Nodes;->EMPTY_INT_NODE:Ljj$/util/stream/Node$OfInt;

    new-instance v0, Ljj$/util/stream/Nodes$EmptyNode$OfLong;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$EmptyNode$OfLong;-><init>()V

    sput-object v0, Ljj$/util/stream/Nodes;->EMPTY_LONG_NODE:Ljj$/util/stream/Node$OfLong;

    new-instance v0, Ljj$/util/stream/Nodes$EmptyNode$OfDouble;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$EmptyNode$OfDouble;-><init>()V

    sput-object v0, Ljj$/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljj$/util/stream/Node$OfDouble;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Ljj$/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [J

    sput-object v1, Ljj$/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    new-array v0, v0, [D

    sput-object v0, Ljj$/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static builder()Ljj$/util/stream/Node$Builder;
    .registers 1

    new-instance v0, Ljj$/util/stream/Nodes$SpinedNodeBuilder;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$SpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static builder(JLjava/util/function/IntFunction;)Ljj$/util/stream/Node$Builder;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_13

    new-instance v0, Ljj$/util/stream/Nodes$FixedNodeBuilder;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/stream/Nodes$FixedNodeBuilder;-><init>(JLjava/util/function/IntFunction;)V

    goto :goto_17

    :cond_13
    invoke-static {}, Ljj$/util/stream/Nodes;->builder()Ljj$/util/stream/Node$Builder;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method static castingArray()Ljava/util/function/IntFunction;
    .registers 1

    new-instance v0, Ljj$/util/stream/Nodes$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static collect(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;ZLjava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 9

    invoke-virtual {p0, p1}, Ljj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_35

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_35

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_2d

    long-to-int v2, v0

    invoke-interface {p3, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    new-instance v3, Ljj$/util/stream/Nodes$SizedCollectorTask$OfRef;

    invoke-direct {v3, p1, p0, v2}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/PipelineHelper;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfRef;->invoke()Ljava/lang/Object;

    invoke-static {v2}, Ljj$/util/stream/Nodes;->node([Ljava/lang/Object;)Ljj$/util/stream/Node;

    move-result-object v3

    return-object v3

    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_35
    new-instance v2, Ljj$/util/stream/Nodes$CollectorTask$OfRef;

    invoke-direct {v2, p0, p3, p1}, Ljj$/util/stream/Nodes$CollectorTask$OfRef;-><init>(Ljj$/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Ljj$/util/Spliterator;)V

    invoke-virtual {v2}, Ljj$/util/stream/Nodes$CollectorTask$OfRef;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Node;

    if-eqz p2, :cond_47

    invoke-static {v2, p3}, Ljj$/util/stream/Nodes;->flatten(Ljj$/util/stream/Node;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;

    move-result-object v3

    goto :goto_48

    :cond_47
    move-object v3, v2

    :goto_48
    return-object v3
.end method

.method public static collectDouble(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)Ljj$/util/stream/Node$OfDouble;
    .registers 8

    invoke-virtual {p0, p1}, Ljj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_29

    long-to-int v2, v0

    new-array v2, v2, [D

    new-instance v3, Ljj$/util/stream/Nodes$SizedCollectorTask$OfDouble;

    invoke-direct {v3, p1, p0, v2}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/PipelineHelper;[D)V

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    invoke-static {v2}, Ljj$/util/stream/Nodes;->node([D)Ljj$/util/stream/Node$OfDouble;

    move-result-object v3

    return-object v3

    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    new-instance v2, Ljj$/util/stream/Nodes$CollectorTask$OfDouble;

    invoke-direct {v2, p0, p1}, Ljj$/util/stream/Nodes$CollectorTask$OfDouble;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    invoke-virtual {v2}, Ljj$/util/stream/Nodes$CollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Node$OfDouble;

    if-eqz p2, :cond_43

    invoke-static {v2}, Ljj$/util/stream/Nodes;->flattenDouble(Ljj$/util/stream/Node$OfDouble;)Ljj$/util/stream/Node$OfDouble;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method public static collectInt(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)Ljj$/util/stream/Node$OfInt;
    .registers 8

    invoke-virtual {p0, p1}, Ljj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_29

    long-to-int v2, v0

    new-array v2, v2, [I

    new-instance v3, Ljj$/util/stream/Nodes$SizedCollectorTask$OfInt;

    invoke-direct {v3, p1, p0, v2}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/PipelineHelper;[I)V

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfInt;->invoke()Ljava/lang/Object;

    invoke-static {v2}, Ljj$/util/stream/Nodes;->node([I)Ljj$/util/stream/Node$OfInt;

    move-result-object v3

    return-object v3

    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    new-instance v2, Ljj$/util/stream/Nodes$CollectorTask$OfInt;

    invoke-direct {v2, p0, p1}, Ljj$/util/stream/Nodes$CollectorTask$OfInt;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    invoke-virtual {v2}, Ljj$/util/stream/Nodes$CollectorTask$OfInt;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Node$OfInt;

    if-eqz p2, :cond_43

    invoke-static {v2}, Ljj$/util/stream/Nodes;->flattenInt(Ljj$/util/stream/Node$OfInt;)Ljj$/util/stream/Node$OfInt;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method public static collectLong(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;Z)Ljj$/util/stream/Node$OfLong;
    .registers 8

    invoke-virtual {p0, p1}, Ljj$/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_29

    long-to-int v2, v0

    new-array v2, v2, [J

    new-instance v3, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;

    invoke-direct {v3, p1, p0, v2}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/PipelineHelper;[J)V

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->invoke()Ljava/lang/Object;

    invoke-static {v2}, Ljj$/util/stream/Nodes;->node([J)Ljj$/util/stream/Node$OfLong;

    move-result-object v3

    return-object v3

    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    new-instance v2, Ljj$/util/stream/Nodes$CollectorTask$OfLong;

    invoke-direct {v2, p0, p1}, Ljj$/util/stream/Nodes$CollectorTask$OfLong;-><init>(Ljj$/util/stream/PipelineHelper;Ljj$/util/Spliterator;)V

    invoke-virtual {v2}, Ljj$/util/stream/Nodes$CollectorTask$OfLong;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Node$OfLong;

    if-eqz p2, :cond_43

    invoke-static {v2}, Ljj$/util/stream/Nodes;->flattenLong(Ljj$/util/stream/Node$OfLong;)Ljj$/util/stream/Node$OfLong;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method static conc(Ljj$/util/stream/StreamShape;Ljj$/util/stream/Node;Ljj$/util/stream/Node;)Ljj$/util/stream/Node;
    .registers 6

    sget-object v0, Ljj$/util/stream/Nodes$1;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljj$/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24  #0x4
    new-instance v0, Ljj$/util/stream/Nodes$ConcNode$OfDouble;

    move-object v1, p1

    check-cast v1, Ljj$/util/stream/Node$OfDouble;

    move-object v2, p2

    check-cast v2, Ljj$/util/stream/Node$OfDouble;

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljj$/util/stream/Node$OfDouble;Ljj$/util/stream/Node$OfDouble;)V

    return-object v0

    :pswitch_30  #0x3
    new-instance v0, Ljj$/util/stream/Nodes$ConcNode$OfLong;

    move-object v1, p1

    check-cast v1, Ljj$/util/stream/Node$OfLong;

    move-object v2, p2

    check-cast v2, Ljj$/util/stream/Node$OfLong;

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljj$/util/stream/Node$OfLong;Ljj$/util/stream/Node$OfLong;)V

    return-object v0

    :pswitch_3c  #0x2
    new-instance v0, Ljj$/util/stream/Nodes$ConcNode$OfInt;

    move-object v1, p1

    check-cast v1, Ljj$/util/stream/Node$OfInt;

    move-object v2, p2

    check-cast v2, Ljj$/util/stream/Node$OfInt;

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Nodes$ConcNode$OfInt;-><init>(Ljj$/util/stream/Node$OfInt;Ljj$/util/stream/Node$OfInt;)V

    return-object v0

    :pswitch_48  #0x1
    new-instance v0, Ljj$/util/stream/Nodes$ConcNode;

    invoke-direct {v0, p1, p2}, Ljj$/util/stream/Nodes$ConcNode;-><init>(Ljj$/util/stream/Node;Ljj$/util/stream/Node;)V

    return-object v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_3c  #00000002
        :pswitch_30  #00000003
        :pswitch_24  #00000004
    .end packed-switch
.end method

.method static doubleBuilder()Ljj$/util/stream/Node$Builder$OfDouble;
    .registers 1

    new-instance v0, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$DoubleSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static doubleBuilder(J)Ljj$/util/stream/Node$Builder$OfDouble;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_13

    new-instance v0, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Nodes$DoubleFixedNodeBuilder;-><init>(J)V

    goto :goto_17

    :cond_13
    invoke-static {}, Ljj$/util/stream/Nodes;->doubleBuilder()Ljj$/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method static emptyNode(Ljj$/util/stream/StreamShape;)Ljj$/util/stream/Node;
    .registers 4

    sget-object v0, Ljj$/util/stream/Nodes$1;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljj$/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24  #0x4
    sget-object v0, Ljj$/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljj$/util/stream/Node$OfDouble;

    return-object v0

    :pswitch_27  #0x3
    sget-object v0, Ljj$/util/stream/Nodes;->EMPTY_LONG_NODE:Ljj$/util/stream/Node$OfLong;

    return-object v0

    :pswitch_2a  #0x2
    sget-object v0, Ljj$/util/stream/Nodes;->EMPTY_INT_NODE:Ljj$/util/stream/Node$OfInt;

    return-object v0

    :pswitch_2d  #0x1
    sget-object v0, Ljj$/util/stream/Nodes;->EMPTY_NODE:Ljj$/util/stream/Node;

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d  #00000001
        :pswitch_2a  #00000002
        :pswitch_27  #00000003
        :pswitch_24  #00000004
    .end packed-switch
.end method

.method public static flatten(Ljj$/util/stream/Node;Ljava/util/function/IntFunction;)Ljj$/util/stream/Node;
    .registers 8

    invoke-interface {p0}, Ljj$/util/stream/Node;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-interface {p0}, Ljj$/util/stream/Node;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_27

    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    new-instance v3, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljj$/util/stream/Node;[Ljava/lang/Object;ILjj$/util/stream/Nodes-IA;)V

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$ToArrayTask$OfRef;->invoke()Ljava/lang/Object;

    invoke-static {v2}, Ljj$/util/stream/Nodes;->node([Ljava/lang/Object;)Ljj$/util/stream/Node;

    move-result-object v3

    return-object v3

    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    return-object p0
.end method

.method public static flattenDouble(Ljj$/util/stream/Node$OfDouble;)Ljj$/util/stream/Node$OfDouble;
    .registers 7

    invoke-interface {p0}, Ljj$/util/stream/Node$OfDouble;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    invoke-interface {p0}, Ljj$/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    long-to-int v2, v0

    new-array v2, v2, [D

    new-instance v3, Ljj$/util/stream/Nodes$ToArrayTask$OfDouble;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljj$/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Ljj$/util/stream/Node$OfDouble;[DILjj$/util/stream/Nodes-IA;)V

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$ToArrayTask$OfDouble;->invoke()Ljava/lang/Object;

    invoke-static {v2}, Ljj$/util/stream/Nodes;->node([D)Ljj$/util/stream/Node$OfDouble;

    move-result-object v3

    return-object v3

    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    return-object p0
.end method

.method public static flattenInt(Ljj$/util/stream/Node$OfInt;)Ljj$/util/stream/Node$OfInt;
    .registers 7

    invoke-interface {p0}, Ljj$/util/stream/Node$OfInt;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    invoke-interface {p0}, Ljj$/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    long-to-int v2, v0

    new-array v2, v2, [I

    new-instance v3, Ljj$/util/stream/Nodes$ToArrayTask$OfInt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljj$/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljj$/util/stream/Node$OfInt;[IILjj$/util/stream/Nodes-IA;)V

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$ToArrayTask$OfInt;->invoke()Ljava/lang/Object;

    invoke-static {v2}, Ljj$/util/stream/Nodes;->node([I)Ljj$/util/stream/Node$OfInt;

    move-result-object v3

    return-object v3

    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    return-object p0
.end method

.method public static flattenLong(Ljj$/util/stream/Node$OfLong;)Ljj$/util/stream/Node$OfLong;
    .registers 7

    invoke-interface {p0}, Ljj$/util/stream/Node$OfLong;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    invoke-interface {p0}, Ljj$/util/stream/Node$OfLong;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_23

    long-to-int v2, v0

    new-array v2, v2, [J

    new-instance v3, Ljj$/util/stream/Nodes$ToArrayTask$OfLong;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljj$/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljj$/util/stream/Node$OfLong;[JILjj$/util/stream/Nodes-IA;)V

    invoke-virtual {v3}, Ljj$/util/stream/Nodes$ToArrayTask$OfLong;->invoke()Ljava/lang/Object;

    invoke-static {v2}, Ljj$/util/stream/Nodes;->node([J)Ljj$/util/stream/Node$OfLong;

    move-result-object v3

    return-object v3

    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    return-object p0
.end method

.method static intBuilder()Ljj$/util/stream/Node$Builder$OfInt;
    .registers 1

    new-instance v0, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$IntSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static intBuilder(J)Ljj$/util/stream/Node$Builder$OfInt;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_13

    new-instance v0, Ljj$/util/stream/Nodes$IntFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Nodes$IntFixedNodeBuilder;-><init>(J)V

    goto :goto_17

    :cond_13
    invoke-static {}, Ljj$/util/stream/Nodes;->intBuilder()Ljj$/util/stream/Node$Builder$OfInt;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method static synthetic lambda$castingArray$0(I)[Ljava/lang/Object;
    .registers 2

    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method static longBuilder()Ljj$/util/stream/Node$Builder$OfLong;
    .registers 1

    new-instance v0, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;

    invoke-direct {v0}, Ljj$/util/stream/Nodes$LongSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static longBuilder(J)Ljj$/util/stream/Node$Builder$OfLong;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p0, v0

    if-gez v2, :cond_13

    new-instance v0, Ljj$/util/stream/Nodes$LongFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Nodes$LongFixedNodeBuilder;-><init>(J)V

    goto :goto_17

    :cond_13
    invoke-static {}, Ljj$/util/stream/Nodes;->longBuilder()Ljj$/util/stream/Node$Builder$OfLong;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method static node([D)Ljj$/util/stream/Node$OfDouble;
    .registers 2

    new-instance v0, Ljj$/util/stream/Nodes$DoubleArrayNode;

    invoke-direct {v0, p0}, Ljj$/util/stream/Nodes$DoubleArrayNode;-><init>([D)V

    return-object v0
.end method

.method static node([I)Ljj$/util/stream/Node$OfInt;
    .registers 2

    new-instance v0, Ljj$/util/stream/Nodes$IntArrayNode;

    invoke-direct {v0, p0}, Ljj$/util/stream/Nodes$IntArrayNode;-><init>([I)V

    return-object v0
.end method

.method static node([J)Ljj$/util/stream/Node$OfLong;
    .registers 2

    new-instance v0, Ljj$/util/stream/Nodes$LongArrayNode;

    invoke-direct {v0, p0}, Ljj$/util/stream/Nodes$LongArrayNode;-><init>([J)V

    return-object v0
.end method

.method static node(Ljava/util/Collection;)Ljj$/util/stream/Node;
    .registers 2

    new-instance v0, Ljj$/util/stream/Nodes$CollectionNode;

    invoke-direct {v0, p0}, Ljj$/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static node([Ljava/lang/Object;)Ljj$/util/stream/Node;
    .registers 2

    new-instance v0, Ljj$/util/stream/Nodes$ArrayNode;

    invoke-direct {v0, p0}, Ljj$/util/stream/Nodes$ArrayNode;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
