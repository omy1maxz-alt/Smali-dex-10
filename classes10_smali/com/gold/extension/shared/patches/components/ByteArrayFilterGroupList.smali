.class public Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;
.super Lcom/gold/extension/shared/patches/components/FilterGroupList;
.source "ByteArrayFilterGroupList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/patches/components/FilterGroupList<",
        "[B",
        "Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/FilterGroupList;-><init>()V

    return-void
.end method


# virtual methods
.method public createSearchGraph()Lcom/gold/extension/shared/ByteTrieSearch;
    .registers 2

    .line 12
    new-instance p0, Lcom/gold/extension/shared/ByteTrieSearch;

    const/4 v0, 0x0

    new-array v0, v0, [[B

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/ByteTrieSearch;-><init>([[B)V

    return-object p0
.end method

.method public bridge synthetic createSearchGraph()Lcom/gold/extension/shared/TrieSearch;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroupList;->createSearchGraph()Lcom/gold/extension/shared/ByteTrieSearch;

    move-result-object p0

    return-object p0
.end method
