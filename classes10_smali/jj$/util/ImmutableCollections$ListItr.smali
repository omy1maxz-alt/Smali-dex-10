.class final Ljj$/util/ImmutableCollections$ListItr;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private cursor:I

.field private final isListIterator:Z

.field private final list:Ljava/util/List;

.field private final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    iput p2, p0, Ljj$/util/ImmutableCollections$ListItr;->size:I

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I

    iput-boolean v0, p0, Ljj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    return-void
.end method

.method constructor <init>(Ljava/util/List;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    iput p2, p0, Ljj$/util/ImmutableCollections$ListItr;->size:I

    iput p3, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I

    iget v1, p0, Ljj$/util/ImmutableCollections$ListItr;->size:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_c

    iget v0, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    :try_start_0
    iget v0, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I

    iget-object v1, p0, Ljj$/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .registers 2

    iget-boolean v0, p0, Ljj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I

    return v0

    :cond_7
    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Ljj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_18

    :try_start_4
    iget v0, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ljj$/util/ImmutableCollections$ListItr;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_10} :catch_11

    return-object v1

    :catch_11
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_18
    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    iget-boolean v0, p0, Ljj$/util/ImmutableCollections$ListItr;->isListIterator:Z

    if-eqz v0, :cond_9

    iget v0, p0, Ljj$/util/ImmutableCollections$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_9
    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove()V
    .registers 2

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
