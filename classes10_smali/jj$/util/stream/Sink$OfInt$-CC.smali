.class public final synthetic Ljj$/util/stream/Sink$OfInt$-CC;
.super Ljava/lang/Object;
.source "Sink.java"


# direct methods
.method public static $default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V
    .registers 4

    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Sink.OfInt.accept(Integer)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljj$/util/stream/Sink$OfInt;->accept(I)V

    return-void
.end method

.method public static bridge synthetic $default$accept(Ljj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljj$/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method
