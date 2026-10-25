.class abstract Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljj$/util/Spliterator;


# instance fields
.field count:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljj$/util/stream/Streams-IA;)V
    .registers 2

    invoke-direct {p0}, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x4450

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget v0, p0, Ljj$/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getComparator(Ljj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
