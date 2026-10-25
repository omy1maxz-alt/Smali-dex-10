.class public abstract Lcom/gold/extension/shared/settings/search/BaseSearchViewController;
.super Ljava/lang/Object;
.source "BaseSearchViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;,
        Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler;
    }
.end annotation


# static fields
.field private static final DRAWABLE_MORPHE_SETTINGS_SEARCH_ICON:I

.field private static final DRAWABLE_MORPHE_SETTINGS_SEARCH_ICON_BOLD:I

.field protected static final ID_ACTION_SEARCH:I

.field protected static final ID_MORPHE_SEARCH_VIEW:I

.field protected static final ID_MORPHE_SEARCH_VIEW_CONTAINER:I

.field protected static final ID_MORPHE_SETTINGS_FRAGMENTS:I

.field protected static final MAX_SEARCH_RESULTS:I = 0x32

.field protected static final MENU_MORPHE_SEARCH_MENU:I


# instance fields
.field protected final activity:Landroid/app/Activity;

.field protected final allSearchItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final filteredSearchItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

.field protected final inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field protected isSearchActive:Z

.field protected isShowingSearchHistory:Z

.field protected final keyToSearchItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field protected nativeBackCallback:Ljava/lang/Object;

.field protected final originalTitle:Ljava/lang/CharSequence;

.field protected overlayContainer:Landroid/widget/FrameLayout;

.field protected searchContainer:Landroid/widget/FrameLayout;

.field protected searchHistoryManager:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

.field protected searchResultsAdapter:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

.field protected searchView:Landroid/widget/SearchView;

.field protected final toolbar:Landroid/widget/Toolbar;


# direct methods
.method public static synthetic $r8$lambda$3kr2v0r5X4b-Yx9BYrV1qYAoK_o(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;Landroid/view/MenuItem;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->lambda$setupToolbarMenu$1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6OAZl4SqtGwyV_m3B6OW-yLwARI(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->lambda$initializeSearchData$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D074ixjYg8bafUpA3a3XBk0jI8Q(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->lambda$initializeSearchHistoryManager$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EsWvELahsJoDBmcC7D99-y82vwU(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->lambda$setupListeners$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WCFtcothomfxJGoH_rRah0NmoGg(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->lambda$setupPreferenceListeners$6(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSNdwE1rGvQBNs1cToknly7BuTI()Ljava/lang/String;
    .registers 1

    .line 366
    const-string v0, "Failed to initialize search data"

    return-object v0
.end method

.method public static synthetic $r8$lambda$hhBh_wtjPtMjUAYc54Oob3kjH-o(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->lambda$initializeSearchData$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$j8ozwf8b0R8w4IBoGbtBEI-tJ8Y(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)I
    .registers 2

    .line 537
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jgouhlJ_EZdx7PouOyQuVlbZaTA(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->lambda$setupPreferenceListeners$7(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 87
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_search_view"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_MORPHE_SEARCH_VIEW:I

    .line 89
    const-string v1, "youtube_search_view_container"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_MORPHE_SEARCH_VIEW_CONTAINER:I

    .line 91
    const-string v1, "action_search"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_ACTION_SEARCH:I

    .line 93
    const-string v1, "youtube_settings_fragments"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_MORPHE_SETTINGS_FRAGMENTS:I

    .line 95
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_settings_search_icon"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->DRAWABLE_MORPHE_SETTINGS_SEARCH_ICON:I

    .line 97
    const-string v1, "youtube_settings_search_icon_bold"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->DRAWABLE_MORPHE_SETTINGS_SEARCH_ICON_BOLD:I

    .line 99
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->MENU:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_search_menu"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->MENU_MORPHE_SEARCH_MENU:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/Toolbar;Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    .line 120
    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    .line 121
    iput-object p3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    .line 122
    invoke-virtual {p2}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->originalTitle:Ljava/lang/CharSequence;

    .line 123
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    .line 124
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    .line 125
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->keyToSearchItem:Ljava/util/Map;

    .line 126
    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isShowingSearchHistory:Z

    .line 130
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->initializeSearchView()V

    .line 131
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->initializeOverlayContainer()V

    .line 132
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->initializeSearchHistoryManager()V

    .line 133
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->setupToolbarMenu()V

    .line 134
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->setupListeners()V

    return-void
.end method

.method public static createBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    .line 711
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 712
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 713
    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp28:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 714
    invoke-static {}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->getSearchViewBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static getSearchIcon()I
    .registers 1

    .line 106
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 107
    sget v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->DRAWABLE_MORPHE_SETTINGS_SEARCH_ICON_BOLD:I

    return v0

    .line 108
    :cond_9
    sget v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->DRAWABLE_MORPHE_SETTINGS_SEARCH_ICON:I

    return v0
.end method

.method public static getSearchViewBackground()I
    .registers 2

    .line 704
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getDialogBackgroundColor()I

    move-result v0

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x3f8e147b  # 1.11f

    goto :goto_11

    :cond_e
    const v1, 0x3f733333  # 0.95f

    :goto_11
    invoke-static {v0, v1}, Lcom/gold/extension/shared/Utils;->adjustColorBrightness(IF)I

    move-result v0

    return v0
.end method

.method private initializeOverlayContainer()V
    .registers 5

    .line 193
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 199
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    new-instance v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 206
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->createSearchResultsAdapter()Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchResultsAdapter:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    .line 207
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    sget v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_MORPHE_SETTINGS_FRAGMENTS:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6e

    .line 222
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x30

    .line 225
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 226
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6e
    return-void
.end method

.method private initializeSearchHistoryManager()V
    .registers 5

    .line 234
    new-instance v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;)V

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchHistoryManager:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    return-void
.end method

.method private initializeSearchView()V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    sget v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_MORPHE_SEARCH_VIEW:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    .line 143
    const-string v2, "android:id/search_src_text"

    invoke-static {v1, v2}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 146
    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 148
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    sget v2, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_MORPHE_SEARCH_VIEW_CONTAINER:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchContainer:Landroid/widget/FrameLayout;

    .line 151
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    invoke-static {}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->createBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    const-string v2, "youtube_settings_search_hint"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41800000  # 16.0f

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_51

    .line 159
    invoke-direct {p0, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->setCursorColor(Landroid/widget/EditText;)V

    .line 163
    :cond_51
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->MORPHE_LANGUAGE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/settings/AppLanguage;

    .line 164
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/AppLanguage;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->isRightToLeftLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 165
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 166
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/view/View;->setTextAlignment(I)V

    :cond_6f
    return-void
.end method

.method private synthetic lambda$initializeSearchData$3()Ljava/lang/String;
    .registers 3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Collected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " searchable preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initializeSearchData$5()V
    .registers 5

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    invoke-interface {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;->getPreferenceScreenForSearch()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 353
    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->collectSearchablePreferences(Landroid/preference/PreferenceGroup;)V

    .line 354
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 355
    instance-of v2, v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    if-eqz v2, :cond_11

    move-object v2, v1

    check-cast v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 356
    iget-object v2, v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 358
    iget-object v3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->keyToSearchItem:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 362
    :cond_32
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->setupPreferenceListeners()V

    .line 363
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    :cond_3d
    return-void

    :catch_3e
    move-exception p0

    .line 366
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$initializeSearchHistoryManager$0(Ljava/lang/String;)V
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 236
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->hideSearchHistory()V

    return-void
.end method

.method private synthetic lambda$setupListeners$2(Landroid/view/View;)V
    .registers 2

    .line 332
    iget-boolean p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive:Z

    if-eqz p1, :cond_8

    .line 333
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->closeSearch()V

    return-void

    .line 335
    :cond_8
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setupPreferenceListeners$6(Ljava/lang/String;I)V
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->keyToSearchItem:Ljava/util/Map;

    .line 383
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    if-eqz p1, :cond_10

    .line 385
    invoke-virtual {p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->setColor(I)V

    .line 386
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->refreshSearchResults()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$setupPreferenceListeners$7(Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 391
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->keyToSearchItem:Ljava/util/Map;

    .line 392
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    const/4 v0, 0x1

    if-nez p2, :cond_10

    return v0

    .line 395
    :cond_10
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_2a

    .line 398
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->getStaticSummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    goto :goto_2a

    .line 401
    :cond_21
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p3, v1, p3

    .line 402
    invoke-virtual {p1, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->clearHighlightedEntriesForDialog()V

    .line 407
    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->refreshHighlighting()V

    .line 408
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->refreshSearchResults()V

    return v0
.end method

.method private synthetic lambda$setupToolbarMenu$1(Landroid/view/MenuItem;)Z
    .registers 3

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_ACTION_SEARCH:I

    if-ne p1, v0, :cond_11

    iget-boolean p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive:Z

    if-nez p1, :cond_11

    .line 275
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->openSearch()V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private setCursorColor(Landroid/widget/EditText;)V
    .registers 5

    .line 176
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_9

    move p0, v0

    goto :goto_b

    :cond_9
    const/high16 p0, -0x1000000

    .line 179
    :goto_b
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 180
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 181
    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp2:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 182
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 185
    invoke-static {p1, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/EditText;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public closeSearch()V
    .registers 4

    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive:Z

    .line 595
    iput-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isShowingSearchHistory:Z

    .line 597
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_17

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->nativeBackCallback:Ljava/lang/Object;

    if-eqz v1, :cond_17

    .line 598
    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler;->unregister(Landroid/app/Activity;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 599
    iput-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->nativeBackCallback:Ljava/lang/Object;

    .line 602
    :cond_17
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchHistoryManager:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->hideSearchHistoryContainer()V

    .line 603
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 607
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_ACTION_SEARCH:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 609
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->originalTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 612
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 613
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 615
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 616
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->clearHighlighting()V

    goto :goto_67

    .line 619
    :cond_77
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchResultsAdapter:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public collectSearchablePreferences(Landroid/preference/PreferenceGroup;)V
    .registers 8

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->collectSearchablePreferencesWithKeys(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/util/List;II)V

    return-void
.end method

.method public collectSearchablePreferencesWithKeys(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/util/List;II)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_4

    goto/16 :goto_8c

    .line 438
    :cond_4
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_8c

    .line 439
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 442
    invoke-virtual {p0, v2, p5, p4}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->shouldIncludePreference(Landroid/preference/Preference;II)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 443
    iget-object v3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    new-instance v4, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    invoke-direct {v4, v2, p2, p3}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;-><init>(Landroid/preference/Preference;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_1f
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_84

    move-object v5, v2

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 450
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 453
    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSpecialPreferenceGroup(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_7b

    instance-of v3, v2, Lcom/gold/extension/shared/settings/preference/NoTitlePreferenceCategory;

    if-nez v3, :cond_7b

    .line 455
    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 456
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 457
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 458
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_60

    .line 459
    :cond_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_60

    :cond_5f
    move-object v3, p2

    .line 463
    :goto_60
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_79

    instance-of v6, v2, Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_76

    iget-object v6, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchResultsAdapter:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    .line 465
    invoke-virtual {v6, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->hasNavigationCapability(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 466
    :cond_76
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_79
    move-object v6, v3

    goto :goto_7c

    :cond_7b
    move-object v6, p2

    :goto_7c
    add-int/lit8 v9, p5, 0x1

    move-object v4, p0

    move v8, p4

    .line 470
    invoke-virtual/range {v4 .. v9}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->collectSearchablePreferencesWithKeys(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/util/List;II)V

    goto :goto_86

    :cond_84
    move-object v4, p0

    move v8, p4

    :goto_86
    add-int/lit8 v1, v1, 0x1

    move-object p0, v4

    move p4, v8

    goto/16 :goto_9

    :cond_8c
    :goto_8c
    return-void
.end method

.method public abstract createSearchResultsAdapter()Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;
.end method

.method public filterAndShowResults(Ljava/lang/String;)V
    .registers 15

    .line 480
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->hideSearchHistory()V

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 484
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 486
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->normalizeTextToLowercase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 491
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_22
    if-ge v6, v4, :cond_30

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 492
    invoke-virtual {v7}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->clearHighlighting()V

    goto :goto_22

    .line 496
    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v4, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v5

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    const/16 v8, 0x32

    if-lt v6, v8, :cond_4d

    goto :goto_5c

    .line 500
    :cond_4d
    invoke-virtual {v7, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->matchesQuery(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 501
    invoke-virtual {v7, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->applyHighlighting(Ljava/util/regex/Pattern;)V

    .line 502
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 508
    :cond_5c
    :goto_5c
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v6, v3

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 509
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v5

    :cond_6b
    :goto_6b
    const/4 v7, 0x0

    if-ge v6, v3, :cond_d8

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 510
    instance-of v9, v8, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    if-eqz v9, :cond_6b

    move-object v9, v8

    check-cast v9, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 511
    iget-object v9, v9, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_89

    .line 512
    invoke-static {v9}, Lcom/gold/extension/shared/settings/Setting;->getSettingFromPath(Ljava/lang/String;)Lcom/gold/extension/shared/settings/Setting;

    move-result-object v7

    :cond_89
    if-eqz v7, :cond_cd

    .line 513
    invoke-virtual {v7}, Lcom/gold/extension/shared/settings/Setting;->isAvailable()Z

    move-result v10

    if-nez v10, :cond_cd

    .line 514
    invoke-virtual {v7}, Lcom/gold/extension/shared/settings/Setting;->getParentSettings()Ljava/util/List;

    move-result-object v7

    .line 515
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_99
    :goto_99
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_cd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gold/extension/shared/settings/Setting;

    .line 516
    iget-object v11, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->keyToSearchItem:Ljava/util/Map;

    iget-object v12, v10, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    if-eqz v11, :cond_99

    .line 517
    iget-object v12, v10, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_99

    .line 518
    invoke-virtual {v11, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->matchesQuery(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c7

    .line 521
    invoke-virtual {v11, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->applyHighlighting(Ljava/util/regex/Pattern;)V

    .line 522
    iget-object v12, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_c7
    iget-object v10, v10, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 528
    :cond_cd
    iget-object v7, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_6b

    .line 530
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 535
    :cond_d8
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_126

    .line 537
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    new-instance v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 541
    iget-object v3, v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_118

    .line 542
    new-instance v3, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$GroupHeaderItem;

    iget-object v4, v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    iget-object v6, v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationKeys:Ljava/util/List;

    invoke-direct {v3, v4, v6}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$GroupHeaderItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 543
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v3, v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    move-object v7, v3

    .line 546
    :cond_118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    .line 548
    :cond_11c
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 549
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 552
    :cond_126
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 553
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 554
    const-string v1, "no_results_placeholder"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 555
    const-string v1, "youtube_settings_search_no_results_title"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 556
    const-string p1, "youtube_settings_search_no_results_summary"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 558
    invoke-static {}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->getSearchIcon()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(I)V

    .line 559
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    new-instance v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    const-string v2, ""

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;-><init>(Landroid/preference/Preference;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_168
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchResultsAdapter:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 563
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public findSearchItemByPreference(Landroid/preference/Preference;)Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;
    .registers 5

    .line 680
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 681
    instance-of v2, v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    if-eqz v2, :cond_6

    check-cast v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 682
    iget-object v2, v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    if-ne v2, p1, :cond_6

    return-object v1

    .line 688
    :cond_1d
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 689
    instance-of v1, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    if-eqz v1, :cond_23

    check-cast v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 690
    iget-object v1, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    if-ne v1, p1, :cond_23

    return-object v0

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleBackPress()Z
    .registers 4

    .line 725
    iget-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 728
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_25

    .line 729
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 731
    invoke-static {}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v2

    invoke-static {v0, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsets;I)Z

    move-result v0

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    if-eqz v0, :cond_34

    .line 736
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_37

    .line 738
    :cond_34
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->closeSearch()V

    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method public hideAllOverlays()V
    .registers 1

    .line 647
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->hideSearchHistory()V

    .line 648
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->hideSearchResults()V

    return-void
.end method

.method public hideSearchHistory()V
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchHistoryManager:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->hideSearchHistoryContainer()V

    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isShowingSearchHistory:Z

    return-void
.end method

.method public hideSearchResults()V
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filteredSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 657
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchResultsAdapter:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 658
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 659
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->clearHighlighting()V

    goto :goto_17

    :cond_27
    return-void
.end method

.method public initializeSearchData()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 347
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->keyToSearchItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 349
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isSearchActive()Z
    .registers 1

    .line 747
    iget-boolean p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive:Z

    return p0
.end method

.method public abstract isSpecialPreferenceGroup(Landroid/preference/Preference;)Z
.end method

.method public openSearch()V
    .registers 5

    const/4 v0, 0x1

    .line 571
    iput-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive:Z

    .line 573
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1a

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->nativeBackCallback:Ljava/lang/Object;

    if-nez v1, :cond_1a

    .line 574
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda12;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    invoke-static {v1, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler;->register(Landroid/app/Activity;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->nativeBackCallback:Ljava/lang/Object;

    .line 577
    :cond_1a
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    sget v2, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_ACTION_SEARCH:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 578
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 582
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 584
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 586
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->showSearchHistory()V

    return-void
.end method

.method public refreshSearchResults()V
    .registers 2

    .line 667
    iget-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isShowingSearchHistory:Z

    if-nez v0, :cond_d

    .line 668
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchResultsAdapter:Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_d
    return-void
.end method

.method public setupListeners()V
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 331
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    new-instance v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda11;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupPreferenceListeners()V
    .registers 5

    .line 375
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->allSearchItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    .line 377
    instance-of v2, v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 378
    iget-object v2, v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    .line 380
    instance-of v3, v2, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

    if-eqz v3, :cond_2a

    check-cast v2, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

    .line 381
    new-instance v3, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    invoke-virtual {v2, v3}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->setOnColorChangeListener(Lcom/gold/extension/shared/settings/preference/ColorPickerPreference$OnColorChangeListener;)V

    goto :goto_38

    .line 389
    :cond_2a
    instance-of v3, v2, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;

    if-eqz v3, :cond_38

    check-cast v2, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;

    .line 390
    new-instance v3, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 414
    :cond_38
    :goto_38
    invoke-virtual {p0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->setupSpecialPreferenceListeners(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    goto :goto_6

    :cond_3c
    return-void
.end method

.method public abstract setupSpecialPreferenceListeners(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
.end method

.method public setupToolbarMenu()V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->MENU_MORPHE_SEARCH_MENU:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 273
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    new-instance v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$$ExternalSyntheticLambda10;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 282
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    sget v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->ID_ACTION_SEARCH:I

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    .line 283
    invoke-static {}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->getSearchIcon()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public shouldIncludePreference(Landroid/preference/Preference;II)Z
    .registers 4

    if-gt p3, p2, :cond_12

    .line 262
    instance-of p2, p1, Landroid/preference/PreferenceCategory;

    if-nez p2, :cond_12

    .line 264
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSpecialPreferenceGroup(Landroid/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_12

    instance-of p0, p1, Landroid/preference/PreferenceScreen;

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public showSearchHistory()V
    .registers 3

    .line 626
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchHistoryManager:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->isSearchHistoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 627
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->overlayContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchHistoryManager:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showSearchHistory()V

    const/4 v0, 0x1

    .line 629
    iput-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isShowingSearchHistory:Z

    return-void

    .line 631
    :cond_17
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->hideAllOverlays()V

    return-void
.end method
