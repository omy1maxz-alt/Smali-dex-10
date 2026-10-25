.class final Ljj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field value:J


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 3

    iput-wide p1, p0, Ljj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method
