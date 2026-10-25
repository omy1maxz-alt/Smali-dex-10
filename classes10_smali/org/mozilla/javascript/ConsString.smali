.class public Lorg/mozilla/javascript/ConsString;
.super Ljava/lang/Object;
.source "ConsString.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x750759072398571aL


# instance fields
.field private isFlat:Z

.field private left:Ljava/lang/CharSequence;

.field private final length:I

.field private right:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object p2, p0, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/javascript/ConsString;->length:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    return-void
.end method

.method private declared-synchronized flatten()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-nez v0, :cond_57

    iget v0, p0, Lorg/mozilla/javascript/ConsString;->length:I

    new-array v1, v0, [C

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    :cond_15
    instance-of v4, v3, Lorg/mozilla/javascript/ConsString;

    if-eqz v4, :cond_2a

    check-cast v3, Lorg/mozilla/javascript/ConsString;

    iget-boolean v4, v3, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-eqz v4, :cond_22

    iget-object v3, v3, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    goto :goto_2a

    :cond_22
    iget-object v4, v3, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object v3, v3, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    goto :goto_47

    :cond_2a
    :goto_2a
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    goto :goto_47

    :cond_41
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :goto_47
    if-nez v3, :cond_15

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/ConsString;->right:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    :cond_57
    iget-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    monitor-exit p0

    return-object v0

    :catchall_5d
    move-exception v0

    monitor-exit p0

    goto :goto_61

    :goto_60
    throw v0

    :goto_61
    goto :goto_60
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ConsString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/ConsString;->flatten()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ConsString;->length:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/ConsString;->flatten()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ConsString;->isFlat:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/mozilla/javascript/ConsString;->left:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    goto :goto_d

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/ConsString;->flatten()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method
