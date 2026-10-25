.class final Ljj$/util/Spliterators$AbstractSpliterator$HoldingConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/Spliterators$AbstractSpliterator$HoldingConsumer;->value:Ljava/lang/Object;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
