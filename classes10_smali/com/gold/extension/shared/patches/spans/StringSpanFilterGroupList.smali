.class public final Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroupList;
.super Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;
.source "StringSpanFilterGroupList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList<",
        "Ljava/lang/String;",
        "Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroupList;-><init>()V

    return-void
.end method


# virtual methods
.method public createSearchGraph()Lcom/gold/extension/shared/StringTrieSearch;
    .registers 2

    .line 14
    new-instance p0, Lcom/gold/extension/shared/StringTrieSearch;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic createSearchGraph()Lcom/gold/extension/shared/TrieSearch;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroupList;->createSearchGraph()Lcom/gold/extension/shared/StringTrieSearch;

    move-result-object p0

    return-object p0
.end method
