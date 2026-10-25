.class public Lcom/gold/extension/youtube/settings/search/YouTubeSearchResultsAdapter;
.super Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;
.source "YouTubeSearchResultsAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;",
            ">;",
            "Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;",
            "Lcom/gold/extension/shared/settings/search/BaseSearchViewController;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    return-void
.end method


# virtual methods
.method public getMainPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    invoke-interface {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;->getPreferenceScreenForSearch()Landroid/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method
