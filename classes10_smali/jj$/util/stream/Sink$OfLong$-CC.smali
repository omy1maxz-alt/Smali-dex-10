.class public final synthetic Ljj$/util/stream/Sink$OfLong$-CC;
.super Ljava/lang/Object;
.source "Sink.java"


# direct methods
.method public static $default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V
    .registers 4

    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Sink.OfLong.accept(Long)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljj$/util/stream/Sink$OfLong;->accept(J)V

    return-void
.end method

.method public static bridge synthetic $default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Ljj$/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method
