.class public final synthetic Ljj$/util/Spliterator$OfPrimitive$-CC;
.super Ljava/lang/Object;
.source "Spliterator.java"


# direct methods
.method public static $default$forEachRemaining(Ljj$/util/Spliterator$OfPrimitive;Ljava/lang/Object;)V
    .registers 3

    :cond_0
    invoke-interface {p0, p1}, Ljj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static bridge synthetic $default$trySplit(Ljj$/util/Spliterator$OfPrimitive;)Ljj$/util/Spliterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/Spliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
