.class public final synthetic Ljj$/lang/Iterable$-CC;
.super Ljava/lang/Object;
.source "Iterable.java"


# direct methods
.method public static $default$forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_7

    :cond_15
    return-void
.end method

.method public static $default$spliterator(Ljava/lang/Iterable;)Ljj$/util/Spliterator;
    .registers 3

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
