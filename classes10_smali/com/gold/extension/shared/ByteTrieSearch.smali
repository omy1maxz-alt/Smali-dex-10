.class public final Lcom/gold/extension/shared/ByteTrieSearch;
.super Lcom/gold/extension/shared/TrieSearch;
.source "ByteTrieSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/ByteTrieSearch$ByteTrieNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/TrieSearch<",
        "[B>;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>([[B)V
    .registers 3

    .line 41
    new-instance v0, Lcom/gold/extension/shared/ByteTrieSearch$ByteTrieNode;

    invoke-direct {v0}, Lcom/gold/extension/shared/ByteTrieSearch$ByteTrieNode;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/gold/extension/shared/TrieSearch;-><init>(Lcom/gold/extension/shared/TrieSearch$TrieNode;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs convertStringsToBytes([Ljava/lang/String;)[[B
    .registers 6

    .line 32
    array-length v0, p0

    .line 33
    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_13

    .line 35
    aget-object v3, p0, v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_13
    return-object v1
.end method
