.class abstract Lcom/gold/extension/shared/TrieSearch$TrieNode;
.super Ljava/lang/Object;
.source "TrieSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/TrieSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TrieNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CHILDREN_ARRAY_INCREASE_SIZE_INCREMENT:I = 0x2

.field private static final ROOT_NODE_CHARACTER_VALUE:C


# instance fields
.field private children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field private endOfPatternCallback:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private leaf:Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final nodeValue:C


# direct methods
.method public static bridge synthetic -$$Nest$maddPattern(Lcom/gold/extension/shared/TrieSearch$TrieNode;Ljava/lang/Object;IILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->addPattern(Ljava/lang/Object;IILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mestimatedNumberOfPointersUsed(Lcom/gold/extension/shared/TrieSearch$TrieNode;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->estimatedNumberOfPointersUsed()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smmatches(Lcom/gold/extension/shared/TrieSearch$TrieNode;Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->matches(Lcom/gold/extension/shared/TrieSearch$TrieNode;Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-char v0, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->nodeValue:C

    return-void
.end method

.method public constructor <init>(C)V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-char p1, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->nodeValue:C

    return-void
.end method

.method private static addNodeToArray([Lcom/gold/extension/shared/TrieSearch$TrieNode;Lcom/gold/extension/shared/TrieSearch$TrieNode;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;)Z"
        }
    .end annotation

    .line 213
    array-length v0, p0

    iget-char v1, p1, Lcom/gold/extension/shared/TrieSearch$TrieNode;->nodeValue:C

    invoke-static {v0, v1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->hashIndexForTableSize(IC)I

    move-result v0

    .line 214
    aget-object v1, p0, v0

    if-eqz v1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 217
    :cond_d
    aput-object p1, p0, v0

    const/4 p0, 0x1

    return p0
.end method

.method private addPattern(Ljava/lang/Object;IILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V
    .registers 10
    .param p4  # Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, p3, :cond_14

    .line 147
    iget-object p1, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->endOfPatternCallback:Ljava/util/List;

    if-nez p1, :cond_e

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->endOfPatternCallback:Ljava/util/List;

    .line 150
    :cond_e
    iget-object p0, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->endOfPatternCallback:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 154
    :cond_14
    iget-object v1, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->leaf:Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;

    .line 164
    iget-object v2, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    if-eqz v1, :cond_35

    if-nez v2, :cond_2f

    .line 159
    new-array v2, v0, [Lcom/gold/extension/shared/TrieSearch$TrieNode;

    iput-object v2, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    const/4 v2, 0x0

    .line 161
    iput-object v2, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->leaf:Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;

    .line 162
    iget-object v2, v1, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->pattern:Ljava/lang/Object;

    iget v3, v1, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->patternStartIndex:I

    iget v4, v1, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->patternLength:I

    iget-object v1, v1, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->callback:Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->addPattern(Ljava/lang/Object;IILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    goto :goto_3f

    .line 157
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_35
    if-nez v2, :cond_3f

    .line 165
    new-instance v0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;-><init>(Ljava/lang/Object;IILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    iput-object v0, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->leaf:Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;

    return-void

    .line 169
    :cond_3f
    :goto_3f
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getCharValue(Ljava/lang/Object;I)C

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    array-length v2, v2

    invoke-static {v2, v1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->hashIndexForTableSize(IC)I

    move-result v2

    .line 171
    iget-object v3, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    aget-object v3, v3, v2

    if-nez v3, :cond_59

    .line 173
    invoke-virtual {p0, v1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->createNode(C)Lcom/gold/extension/shared/TrieSearch$TrieNode;

    move-result-object v3

    .line 174
    iget-object p0, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    aput-object v3, p0, v2

    goto :goto_64

    .line 175
    :cond_59
    iget-char v2, v3, Lcom/gold/extension/shared/TrieSearch$TrieNode;->nodeValue:C

    if-eq v2, v1, :cond_64

    .line 177
    invoke-virtual {p0, v1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->createNode(C)Lcom/gold/extension/shared/TrieSearch$TrieNode;

    move-result-object v3

    .line 178
    invoke-direct {p0, v3}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->expandChildArray(Lcom/gold/extension/shared/TrieSearch$TrieNode;)V

    :cond_64
    :goto_64
    add-int/2addr p2, v0

    .line 180
    invoke-direct {v3, p1, p2, p3, p4}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->addPattern(Ljava/lang/Object;IILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V

    return-void
.end method

.method private estimatedNumberOfPointersUsed()I
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->leaf:Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_8

    :cond_7
    const/4 v0, 0x4

    .line 293
    :goto_8
    iget-object v1, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->endOfPatternCallback:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_11
    iget-object p0, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    if-eqz p0, :cond_27

    .line 298
    array-length v1, p0

    add-int/2addr v0, v1

    .line 299
    array-length v1, p0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    if-eqz v3, :cond_24

    .line 301
    invoke-direct {v3}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->estimatedNumberOfPointersUsed()I

    move-result v3

    add-int/2addr v0, v3

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_27
    return v0
.end method

.method private expandChildArray(Lcom/gold/extension/shared/TrieSearch$TrieNode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Lcom/gold/extension/shared/TrieSearch$TrieNode;

    array-length v0, v0

    :goto_8
    add-int/lit8 v0, v0, 0x2

    .line 191
    new-array v1, v0, [Lcom/gold/extension/shared/TrieSearch$TrieNode;

    .line 192
    invoke-static {v1, p1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->addNodeToArray([Lcom/gold/extension/shared/TrieSearch$TrieNode;Lcom/gold/extension/shared/TrieSearch$TrieNode;)Z

    .line 195
    iget-object v2, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_23

    aget-object v5, v2, v4

    if-eqz v5, :cond_20

    .line 197
    invoke-static {v1, v5}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->addNodeToArray([Lcom/gold/extension/shared/TrieSearch$TrieNode;Lcom/gold/extension/shared/TrieSearch$TrieNode;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_8

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 207
    :cond_23
    iput-object v1, p0, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    return-void
.end method

.method private static hashIndexForTableSize(IC)I
    .registers 2

    .line 222
    rem-int/2addr p1, p0

    return p1
.end method

.method private static matches(Lcom/gold/extension/shared/TrieSearch$TrieNode;Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;TT;II",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v5, p2

    move v7, v0

    move-object p2, p0

    .line 242
    :goto_4
    iget-object v1, p2, Lcom/gold/extension/shared/TrieSearch$TrieNode;->leaf:Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    if-eqz v1, :cond_14

    .line 243
    invoke-virtual/range {v1 .. v6}, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->matches(Lcom/gold/extension/shared/TrieSearch$TrieNode;Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    return v8

    .line 247
    :cond_14
    iget-object p0, p2, Lcom/gold/extension/shared/TrieSearch$TrieNode;->endOfPatternCallback:Ljava/util/List;

    if-eqz p0, :cond_34

    sub-int p1, v5, v7

    .line 250
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;

    if-nez p3, :cond_2d

    return v8

    .line 254
    :cond_2d
    invoke-interface {p3, v3, p1, v7, v6}, Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;->patternMatched(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e

    return v8

    .line 260
    :cond_34
    iget-object p0, p2, Lcom/gold/extension/shared/TrieSearch$TrieNode;->children:[Lcom/gold/extension/shared/TrieSearch$TrieNode;

    if-nez p0, :cond_39

    return v0

    :cond_39
    if-ne v5, v4, :cond_3c

    return v0

    .line 269
    :cond_3c
    invoke-virtual {v2, v3, v5}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getCharValue(Ljava/lang/Object;I)C

    move-result p1

    .line 270
    array-length p2, p0

    invoke-static {p2, p1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->hashIndexForTableSize(IC)I

    move-result p2

    .line 271
    aget-object p2, p0, p2

    if-eqz p2, :cond_57

    .line 272
    iget-char p0, p2, Lcom/gold/extension/shared/TrieSearch$TrieNode;->nodeValue:C

    if-eq p0, p1, :cond_4e

    goto :goto_57

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object p0, v2

    move-object p1, v3

    move p3, v4

    move-object p4, v6

    goto :goto_4

    :cond_57
    :goto_57
    return v0
.end method


# virtual methods
.method public abstract createNode(C)Lcom/gold/extension/shared/TrieSearch$TrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getCharValue(Ljava/lang/Object;I)C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)C"
        }
    .end annotation
.end method

.method public abstract getTextLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
