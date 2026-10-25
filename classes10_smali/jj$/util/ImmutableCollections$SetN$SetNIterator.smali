.class final Ljj$/util/ImmutableCollections$SetN$SetNIterator;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private idx:I

.field private remaining:I

.field final synthetic this$0:Ljj$/util/ImmutableCollections$SetN;


# direct methods
.method constructor <init>(Ljj$/util/ImmutableCollections$SetN;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljj$/util/ImmutableCollections$SetN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljj$/util/ImmutableCollections$SetN;->size()I

    move-result v0

    iput v0, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    iget v0, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_1a

    sget v0, Ljj$/util/ImmutableCollections;->SALT:I

    iget-object p1, p1, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length p1, p1

    invoke-static {v0, p1}, Ljj$/time/temporal/WeekFields$ComputedDayOfField$$ExternalSyntheticBackport0;->m(II)I

    move-result p1

    iput p1, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    :cond_1a
    return-void
.end method

.method private nextIndex()I
    .registers 3

    iget v0, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    sget v1, Ljj$/util/ImmutableCollections;->SALT:I

    if-ltz v1, :cond_11

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljj$/util/ImmutableCollections$SetN;

    iget-object v1, v1, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1c

    const/4 v0, 0x0

    goto :goto_1c

    :cond_11
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1c

    iget-object v1, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljj$/util/ImmutableCollections$SetN;

    iget-object v1, v1, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :cond_1c
    :goto_1c
    iput v0, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->idx:I

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_6
    iget-object v0, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->this$0:Ljj$/util/ImmutableCollections$SetN;

    iget-object v0, v0, Ljj$/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->nextIndex()I

    move-result v1

    aget-object v0, v0, v1

    move-object v1, v0

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    iget v0, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljj$/util/ImmutableCollections$SetN$SetNIterator;->remaining:I

    return-object v1

    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
