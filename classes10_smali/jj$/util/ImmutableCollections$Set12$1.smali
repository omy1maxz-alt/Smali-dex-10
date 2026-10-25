.class Ljj$/util/ImmutableCollections$Set12$1;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private idx:I

.field final synthetic this$0:Ljj$/util/ImmutableCollections$Set12;


# direct methods
.method constructor <init>(Ljj$/util/ImmutableCollections$Set12;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/ImmutableCollections$Set12$1;->this$0:Ljj$/util/ImmutableCollections$Set12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->this$0:Ljj$/util/ImmutableCollections$Set12;

    invoke-virtual {v0}, Ljj$/util/ImmutableCollections$Set12;->size()I

    move-result v0

    iput v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->idx:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->idx:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->idx:I

    sget v0, Ljj$/util/ImmutableCollections;->SALT:I

    if-gez v0, :cond_18

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->this$0:Ljj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    if-nez v0, :cond_13

    goto :goto_18

    :cond_13
    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->this$0:Ljj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    goto :goto_1c

    :cond_18
    :goto_18
    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->this$0:Ljj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    :goto_1c
    return-object v0

    :cond_1d
    iget v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->idx:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_32

    iput v1, p0, Ljj$/util/ImmutableCollections$Set12$1;->idx:I

    sget v0, Ljj$/util/ImmutableCollections;->SALT:I

    if-ltz v0, :cond_2d

    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->this$0:Ljj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljj$/util/ImmutableCollections$Set12;->e1:Ljava/lang/Object;

    goto :goto_31

    :cond_2d
    iget-object v0, p0, Ljj$/util/ImmutableCollections$Set12$1;->this$0:Ljj$/util/ImmutableCollections$Set12;

    iget-object v0, v0, Ljj$/util/ImmutableCollections$Set12;->e0:Ljava/lang/Object;

    :goto_31
    return-object v0

    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
