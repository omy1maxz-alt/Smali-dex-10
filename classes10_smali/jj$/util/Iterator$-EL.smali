.class public final synthetic Ljj$/util/Iterator$-EL;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V
    .registers 3

    instance-of v0, p0, Ljj$/util/Iterator;

    if-eqz v0, :cond_a

    check-cast p0, Ljj$/util/Iterator;

    invoke-interface {p0, p1}, Ljj$/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    :cond_a
    invoke-static {p0, p1}, Ljj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void
.end method
