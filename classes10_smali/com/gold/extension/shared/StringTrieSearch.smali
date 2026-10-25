.class public final Lcom/gold/extension/shared/StringTrieSearch;
.super Lcom/gold/extension/shared/TrieSearch;
.source "StringTrieSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/StringTrieSearch$StringTrieNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/TrieSearch<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 3

    .line 30
    new-instance v0, Lcom/gold/extension/shared/StringTrieSearch$StringTrieNode;

    invoke-direct {v0}, Lcom/gold/extension/shared/StringTrieSearch$StringTrieNode;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/gold/extension/shared/TrieSearch;-><init>(Lcom/gold/extension/shared/TrieSearch$TrieNode;[Ljava/lang/Object;)V

    return-void
.end method
