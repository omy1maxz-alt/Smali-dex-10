.class public Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$GroupHeaderItem;
.super Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;
.source "BaseSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupHeaderItem"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->GROUP_HEADER:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    invoke-direct {p0, p1, p2, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;)V

    .line 105
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public applyHighlighting(Ljava/util/regex/Pattern;)V
    .registers 2

    .line 0
    return-void
.end method

.method public clearHighlighting()V
    .registers 1

    .line 0
    return-void
.end method

.method public matchesQuery(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
