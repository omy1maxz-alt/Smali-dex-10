.class final Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;
.super Ljava/lang/Object;
.source "TrieSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/TrieSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrieCompressedPath"
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
.field final callback:Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final pattern:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final patternLength:I

.field final patternStartIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;IILcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->pattern:Ljava/lang/Object;

    .line 50
    iput p2, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->patternStartIndex:I

    .line 51
    iput p3, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->patternLength:I

    .line 52
    iput-object p4, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->callback:Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;

    return-void
.end method


# virtual methods
.method public matches(Lcom/gold/extension/shared/TrieSearch$TrieNode;Ljava/lang/Object;IILjava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "TT;>;TT;II",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    sub-int/2addr p3, p4

    .line 56
    iget v0, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->patternLength:I

    iget v1, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->patternStartIndex:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p3, v0, :cond_a

    return v2

    :cond_a
    move p3, p4

    .line 60
    :goto_b
    iget v0, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->patternLength:I

    if-ge v1, v0, :cond_21

    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getCharValue(Ljava/lang/Object;I)C

    move-result v0

    iget-object v3, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->pattern:Ljava/lang/Object;

    invoke-virtual {p1, v3, v1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;->getCharValue(Ljava/lang/Object;I)C

    move-result v3

    if-eq v0, v3, :cond_1c

    return v2

    :cond_1c
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 66
    :cond_21
    iget-object p1, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->callback:Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;

    if-eqz p1, :cond_30

    iget p0, p0, Lcom/gold/extension/shared/TrieSearch$TrieCompressedPath;->patternStartIndex:I

    sub-int/2addr p4, p0

    invoke-interface {p1, p2, p4, v0, p5}, Lcom/gold/extension/shared/TrieSearch$TriePatternMatchedCallback;->patternMatched(Ljava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    return v2

    :cond_30
    :goto_30
    const/4 p0, 0x1

    return p0
.end method
