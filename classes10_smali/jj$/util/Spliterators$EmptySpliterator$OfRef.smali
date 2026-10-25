.class final Ljj$/util/Spliterators$EmptySpliterator$OfRef;
.super Ljj$/util/Spliterators$EmptySpliterator;
.source "Spliterators.java"

# interfaces
.implements Ljj$/util/Spliterator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/Spliterators$EmptySpliterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/Spliterators$EmptySpliterator;->forEachRemaining(Ljava/lang/Object;)V

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

.method public bridge synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/Spliterators$EmptySpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
