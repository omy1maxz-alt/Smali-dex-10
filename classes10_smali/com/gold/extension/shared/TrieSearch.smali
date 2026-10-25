.class public abstract Lcom/gold/extension/shared/TrieSearch;
.super Ljava/lang/Object;
.source "TrieSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/TrieSearch$TrieNode;,
        Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;,
        Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final root:Lcom/gold/extension/shared/TrieSearch$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/gold/extension/shared/TrieSearch$TrieNode;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/shared/TrieSearch;->patterns:Ljava/util/List;

    .line 325
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    .line 326
    invoke-virtual {p0, p2}, Lcom/gold/extension/shared/TrieSearch;->addPatterns([Ljava/lang/Object;)V

    return-void
.end method

.method private matches(Ljava/lang/Object;IIILjava/lang/Object;)Z
    .registers 7
    .param p5  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-gt p4, p2, :cond_1c

    .line 396
    iget-object p2, p0, Lcom/gold/extension/shared/TrieSearch;->patterns:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    return v0

    :cond_c
    :goto_c
    if-ge p3, p4, :cond_1b

    .line 400
    iget-object p2, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    invoke-static {p2, p1, p3, p4, p5}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->-$$Nest$smmatches(Lcom/gold/extension/shared/TrieSearch$TrieNode;Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_1b
    return v0

    .line 393
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "endIndex: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is greater than texToSearchLength: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addPattern(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    invoke-virtual {v0, p1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getTextLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/gold/extension/shared/TrieSearch;->addPattern(Ljava/lang/Object;ILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    return-void
.end method

.method public addPattern(Ljava/lang/Object;ILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V
    .registers 5
    .param p3  # Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch;->patterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object p0, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->-$$Nest$maddPattern(Lcom/gold/extension/shared/TrieSearch$TrieNode;Ljava/lang/Object;IILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    return-void
.end method

.method public addPattern(Ljava/lang/Object;Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    invoke-virtual {v0, p1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getTextLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;

    invoke-virtual {p0, p1, v0, p2}, Lcom/gold/extension/shared/TrieSearch;->addPattern(Ljava/lang/Object;ILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    return-void
.end method

.method public final varargs addPatterns([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 331
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 332
    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/TrieSearch;->addPattern(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public getEstimatedMemorySize()I
    .registers 5

    .line 409
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 415
    :cond_a
    iget-object p0, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    invoke-static {p0}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->-$$Nest$mestimatedNumberOfPointersUsed(Lcom/gold/extension/shared/TrieSearch$TrieNode;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4090000000000000L  # 1024.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getPatterns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 423
    iget-object p0, p0, Lcom/gold/extension/shared/TrieSearch;->patterns:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final matches(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public matches(Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    invoke-virtual {v0, p1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getTextLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public final matches(Ljava/lang/Object;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public matches(Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 12
    .param p4  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    invoke-virtual {v0, p1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getTextLength(Ljava/lang/Object;)I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch;->root:Lcom/gold/extension/shared/TrieSearch$TrieNode;

    invoke-virtual {v0, p1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getTextLength(Ljava/lang/Object;)I

    move-result v0

    .line 366
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public numberOfPatterns()I
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/gold/extension/shared/TrieSearch;->patterns:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
