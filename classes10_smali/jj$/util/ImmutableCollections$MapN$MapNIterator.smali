.class Ljj$/util/ImmutableCollections$MapN$MapNIterator;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private idx:I

.field private remaining:I

.field final synthetic this$0:Ljj$/util/ImmutableCollections$MapN;


# direct methods
.method constructor <init>(Ljj$/util/ImmutableCollections$MapN;)V
    .registers 4

    iput-object p1, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljj$/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljj$/util/ImmutableCollections$MapN;->size()I

    move-result v0

    iput v0, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    iget v0, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_1e

    sget v0, Ljj$/util/ImmutableCollections;->SALT:I

    iget-object v1, p1, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    :cond_1e
    return-void
.end method

.method private nextIndex()I
    .registers 3

    iget v0, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    sget v1, Ljj$/util/ImmutableCollections;->SALT:I

    if-ltz v1, :cond_11

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljj$/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    const/4 v0, 0x0

    goto :goto_1c

    :cond_11
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_1c

    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljj$/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x2

    :cond_1c
    :goto_1c
    iput v0, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 5

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_6
    iget-object v0, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljj$/util/ImmutableCollections$MapN;

    iget-object v0, v0, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->nextIndex()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    new-instance v0, Ljj$/util/KeyValueHolder;

    iget-object v1, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljj$/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    iget v2, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    aget-object v1, v1, v2

    iget-object v2, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->this$0:Ljj$/util/ImmutableCollections$MapN;

    iget-object v2, v2, Ljj$/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    iget v3, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->idx:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljj$/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljj$/util/ImmutableCollections$MapN$MapNIterator;->remaining:I

    return-object v0

    :cond_31
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
