.class final Ljj$/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field value:D


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 3

    iput-wide p1, p0, Ljj$/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;->value:D

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method
