.class final Lcom/gold/extension/shared/ByteTrieSearch$ByteTrieNode;
.super Lcom/gold/extension/shared/TrieSearch$TrieNode;
.source "ByteTrieSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/ByteTrieSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteTrieNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/gold/extension/shared/TrieSearch$TrieNode;-><init>()V

    return-void
.end method

.method public constructor <init>(C)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/TrieSearch$TrieNode;-><init>(C)V

    return-void
.end method


# virtual methods
.method public createNode(C)Lcom/gold/extension/shared/TrieSearch$TrieNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
            "[B>;"
        }
    .end annotation

    .line 16
    new-instance p0, Lcom/gold/extension/shared/ByteTrieSearch$ByteTrieNode;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/ByteTrieSearch$ByteTrieNode;-><init>(C)V

    return-object p0
.end method

.method public bridge synthetic getCharValue(Ljava/lang/Object;I)C
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/ByteTrieSearch$ByteTrieNode;->getCharValue([BI)C

    move-result p0

    return p0
.end method

.method public getCharValue([BI)C
    .registers 3

    .line 20
    aget-byte p0, p1, p2

    int-to-char p0, p0

    return p0
.end method

.method public bridge synthetic getTextLength(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/ByteTrieSearch$ByteTrieNode;->getTextLength([B)I

    move-result p0

    return p0
.end method

.method public getTextLength([B)I
    .registers 2

    .line 24
    array-length p0, p1

    return p0
.end method
