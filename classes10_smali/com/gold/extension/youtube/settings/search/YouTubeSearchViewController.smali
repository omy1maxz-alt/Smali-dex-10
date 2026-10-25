.class public Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;
.super Lcom/gold/extension/shared/settings/search/BaseSearchViewController;
.source "YouTubeSearchViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController$PreferenceFragmentAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;)V
    .registers 6

    .line 26
    new-instance v0, Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController$PreferenceFragmentAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController$PreferenceFragmentAdapter;-><init>(Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController-IA;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;-><init>(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;)V

    return-void
.end method

.method public static addSearchViewComponents(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;)Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;
    .registers 4

    .line 22
    new-instance v0, Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;

    invoke-direct {v0, p0, p1, p2}, Lcom/gold/extension/youtube/settings/search/YouTubeSearchViewController;-><init>(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/gold/extension/youtube/settings/preference/YouTubePreferenceFragment;)V

    return-object v0
.end method


# virtual methods
.method public createSearchResultsAdapter()Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;
    .registers 5

    .line 31
    new-instance v0, Lcom/gold/extension/youtube/settings/search/YouTubeSearchResultsAdapter;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    iget-object v3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/gold/extension/youtube/settings/search/YouTubeSearchResultsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    return-object v0
.end method

.method public isSpecialPreferenceGroup(Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setupSpecialPreferenceListeners(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
    .registers 2

    .line 0
    return-void
.end method
