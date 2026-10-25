.class public Lcom/gold/extension/shared/settings/search/SearchHistoryManager;
.super Ljava/lang/Object;
.source "SearchHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;,
        Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;
    }
.end annotation


# static fields
.field private static final ID_CLEAR_HISTORY_BUTTON:I

.field private static final ID_DELETE_ICON:I

.field private static final ID_EMPTY_HISTORY_SUMMARY:I

.field private static final ID_EMPTY_HISTORY_TITLE:I

.field private static final ID_HISTORY_ICON:I

.field private static final ID_HISTORY_TEXT:I

.field private static final ID_SEARCH_ARROW_TIME_ICON:I

.field private static final ID_SEARCH_ARROW_TIME_ICON_BOLD:I

.field private static final ID_SEARCH_HISTORY_HEADER:I

.field private static final ID_SEARCH_HISTORY_LIST:I

.field private static final ID_SEARCH_REMOVE_ICON:I

.field private static final ID_SEARCH_REMOVE_ICON_BOLD:I

.field private static final ID_SEARCH_TIPS_SUMMARY:I

.field private static final LAYOUT_MORPHE_PREFERENCE_SEARCH_HISTORY_ITEM:I

.field private static final LAYOUT_MORPHE_PREFERENCE_SEARCH_HISTORY_SCREEN:I

.field private static final MAX_HISTORY_SIZE:I = 0x5


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final searchHistory:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final searchHistoryAdapter:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;

.field private final searchHistoryContainer:Landroid/widget/FrameLayout;

.field private final showSettingsSearchHistory:Z


# direct methods
.method public static synthetic $r8$lambda$IIVph-VAgqchyqfQSwYA9iLeXQQ()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$XvTl_sbYl7i0ruoYvgUpGQ8A6sY(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing search history query: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sR6bJdY51BMuxmgjlTBY4eP43w0(Lcom/gold/extension/shared/settings/search/SearchHistoryManager;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->lambda$saveSearchHistory$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$udGJl-FS-OD4WKmRe5M0CLsRZSs(Lcom/gold/extension/shared/settings/search/SearchHistoryManager;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetID_DELETE_ICON()I
    .registers 1

    .line 0
    sget v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_DELETE_ICON:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetID_HISTORY_ICON()I
    .registers 1

    .line 0
    sget v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_HISTORY_ICON:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetID_HISTORY_TEXT()I
    .registers 1

    .line 0
    sget v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_HISTORY_TEXT:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetID_SEARCH_ARROW_TIME_ICON()I
    .registers 1

    .line 0
    sget v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_ARROW_TIME_ICON:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetID_SEARCH_ARROW_TIME_ICON_BOLD()I
    .registers 1

    .line 0
    sget v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_ARROW_TIME_ICON_BOLD:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetID_SEARCH_REMOVE_ICON()I
    .registers 1

    .line 0
    sget v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_REMOVE_ICON:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetID_SEARCH_REMOVE_ICON_BOLD()I
    .registers 1

    .line 0
    sget v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_REMOVE_ICON_BOLD:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetLAYOUT_MORPHE_PREFERENCE_SEARCH_HISTORY_ITEM()I
    .registers 1

    .line 0
    sget v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->LAYOUT_MORPHE_PREFERENCE_SEARCH_HISTORY_ITEM:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 41
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "clear_history_button"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_CLEAR_HISTORY_BUTTON:I

    .line 43
    const-string v1, "history_text"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_HISTORY_TEXT:I

    .line 45
    const-string v1, "history_icon"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_HISTORY_ICON:I

    .line 47
    const-string v1, "delete_icon"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_DELETE_ICON:I

    .line 49
    const-string v1, "empty_history_title"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_EMPTY_HISTORY_TITLE:I

    .line 51
    const-string v1, "empty_history_summary"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_EMPTY_HISTORY_SUMMARY:I

    .line 53
    const-string v1, "search_history_header"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_HISTORY_HEADER:I

    .line 55
    const-string v1, "youtube_settings_search_tips_summary"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_TIPS_SUMMARY:I

    .line 57
    sget-object v1, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    const-string v2, "youtube_preference_search_history_screen"

    invoke-static {v1, v2}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->LAYOUT_MORPHE_PREFERENCE_SEARCH_HISTORY_SCREEN:I

    .line 59
    const-string v2, "youtube_preference_search_history_item"

    invoke-static {v1, v2}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->LAYOUT_MORPHE_PREFERENCE_SEARCH_HISTORY_ITEM:I

    .line 61
    const-string v1, "search_history_list"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_HISTORY_LIST:I

    .line 63
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_settings_search_remove"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_REMOVE_ICON:I

    .line 65
    const-string v1, "youtube_settings_search_remove_bold"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_REMOVE_ICON_BOLD:I

    .line 67
    const-string v1, "youtube_settings_arrow_time"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_ARROW_TIME_ICON:I

    .line 69
    const-string v1, "youtube_settings_arrow_time_bold"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_ARROW_TIME_ICON_BOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;)V
    .registers 13

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->activity:Landroid/app/Activity;

    .line 92
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_SEARCH_HISTORY:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showSettingsSearchHistory:Z

    .line 93
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    if-eqz v0, :cond_34

    .line 97
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_SEARCH_ENTRIES:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 99
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    goto :goto_39

    .line 103
    :cond_34
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_SEARCH_ENTRIES:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/Setting;->resetToDefault()Ljava/lang/Object;

    .line 107
    :cond_39
    :goto_39
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 112
    sget v3, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->LAYOUT_MORPHE_PREFERENCE_SEARCH_HISTORY_SCREEN:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 114
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x30

    .line 122
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 123
    invoke-virtual {p2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    sget p2, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_HISTORY_LIST:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_a5

    .line 132
    new-instance v3, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, p0

    move-object v5, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;-><init>(Lcom/gold/extension/shared/settings/search/SearchHistoryManager;Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/Collection;Lcom/gold/extension/shared/settings/search/SearchHistoryManager$OnSelectHistoryItemListener;)V

    iput-object v3, v4, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryAdapter:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;

    .line 136
    sget p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_CLEAR_HISTORY_BUTTON:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 137
    new-instance p1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, v4}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/settings/search/SearchHistoryManager;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const-string p0, "youtube_settings_search_tips_summary"

    .line 145
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/BulletPointPreference;->formatIntoBulletPoints(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 146
    sget p1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_TIPS_SUMMARY:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 147
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 128
    :cond_a5
    const-string p0, "Search history list view not found in container"

    invoke-static {p0}, Lcom/google/protobuf/FieldSet$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 4

    .line 137
    const-string p1, "youtube_settings_search_clear_history"

    .line 138
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "youtube_settings_search_clear_history_message"

    .line 139
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/shared/settings/search/SearchHistoryManager;)V

    .line 137
    invoke-virtual {p0, p1, v0, v1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->createAndShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$saveSearchHistory$2()Ljava/lang/String;
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving search history: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearAllSearchHistory()V
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 223
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->saveSearchHistory()V

    .line 224
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryAdapter:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->clear()V

    .line 225
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryAdapter:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 226
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showSearchHistory()V

    return-void
.end method

.method public createAndShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 14

    .line 294
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda0;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 307
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    const/4 p1, 0x1

    .line 308
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public hideEmptyHistoryViews(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 3

    const/16 p0, 0x8

    .line 264
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideHistoryViews(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 4

    const/16 p0, 0x8

    .line 281
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideSearchHistoryContainer()V
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isSearchHistoryEnabled()Z
    .registers 1

    .line 233
    iget-boolean p0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showSettingsSearchHistory:Z

    return p0
.end method

.method public removeSearchQuery(Ljava/lang/String;)V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->saveSearchHistory()V

    return-void
.end method

.method public saveSearchHistory()V
    .registers 3

    .line 206
    new-instance v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/search/SearchHistoryManager;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 207
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_SEARCH_ENTRIES:Lcom/gold/extension/shared/settings/StringSetting;

    const-string v1, "\n"

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public saveSearchQuery(Ljava/lang/String;)V
    .registers 3

    .line 188
    iget-boolean v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showSettingsSearchHistory:Z

    if-nez v0, :cond_5

    return-void

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 194
    :goto_f
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_29

    .line 195
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_f

    .line 199
    :cond_29
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->saveSearchHistory()V

    return-void
.end method

.method public showEmptyHistoryViews(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 4

    const/4 p0, 0x0

    .line 254
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 255
    const-string v0, "youtube_settings_search_empty_history_title"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 257
    const-string p0, "youtube_settings_search_empty_history_summary"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showHistoryViews(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 4

    const/4 p0, 0x0

    .line 272
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSearchHistory()V
    .registers 7

    .line 154
    iget-boolean v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showSettingsSearchHistory:Z

    if-nez v0, :cond_5

    return-void

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_EMPTY_HISTORY_TITLE:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryContainer:Landroid/widget/FrameLayout;

    sget v2, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_EMPTY_HISTORY_SUMMARY:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryContainer:Landroid/widget/FrameLayout;

    sget v3, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_HISTORY_HEADER:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 162
    iget-object v3, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryContainer:Landroid/widget/FrameLayout;

    sget v4, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_SEARCH_HISTORY_LIST:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 163
    iget-object v4, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryContainer:Landroid/widget/FrameLayout;

    sget v5, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->ID_CLEAR_HISTORY_BUTTON:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 165
    iget-object v5, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showEmptyHistoryViews(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 168
    invoke-virtual {p0, v2, v3, v4}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->hideHistoryViews(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    goto :goto_5d

    .line 171
    :cond_46
    invoke-virtual {p0, v0, v1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->hideEmptyHistoryViews(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 172
    invoke-virtual {p0, v2, v3, v4}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showHistoryViews(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 175
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryAdapter:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->clear()V

    .line 176
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryAdapter:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistory:Ljava/util/Deque;

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 177
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryAdapter:Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager$SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 181
    :goto_5d
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->showSearchHistoryContainer()V

    return-void
.end method

.method public showSearchHistoryContainer()V
    .registers 2

    .line 240
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->searchHistoryContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
