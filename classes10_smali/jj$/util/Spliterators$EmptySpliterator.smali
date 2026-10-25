.class abstract Ljj$/util/Spliterators$EmptySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x4040

    return v0
.end method

.method public estimateSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
