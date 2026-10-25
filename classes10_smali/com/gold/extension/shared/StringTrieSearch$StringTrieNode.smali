.class final Lcom/gold/extension/shared/StringTrieSearch$StringTrieNode;
.super Lcom/gold/extension/shared/TrieSearch$TrieNode;
.source "StringTrieSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/StringTrieSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringTrieNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/TrieSearch$TrieNode<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/gold/extension/shared/TrieSearch$TrieNode;-><init>()V

    return-void
.end method

.method public constructor <init>(C)V
    .registers 2

    .line 13
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance p0, Lcom/gold/extension/shared/StringTrieSearch$StringTrieNode;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/StringTrieSearch$StringTrieNode;-><init>(C)V

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

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/StringTrieSearch$StringTrieNode;->getCharValue(Ljava/lang/String;I)C

    move-result p0

    return p0
.end method

.method public getCharValue(Ljava/lang/String;I)C
    .registers 3

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

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

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/StringTrieSearch$StringTrieNode;->getTextLength(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTextLength(Ljava/lang/String;)I
    .registers 2

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method
