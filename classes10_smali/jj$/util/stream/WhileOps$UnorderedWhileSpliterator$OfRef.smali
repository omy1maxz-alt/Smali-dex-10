.class abstract Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
.super Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field final p:Ljava/util/function/Predicate;

.field t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    iget-object v0, p2, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;ZLjava/util/function/Predicate;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljj$/util/Spliterator;Z)V

    iput-object p3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->p:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->count:I

    iput-object p1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;->t:Ljava/lang/Object;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
