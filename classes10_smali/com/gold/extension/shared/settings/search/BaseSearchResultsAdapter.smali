.class public abstract Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BaseSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;,
        Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;,
        Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;,
        Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$GroupHeaderViewHolder;,
        Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BLINK_DURATION:I = 0x190

.field protected static final ID_PREFERENCE_COLOR_DOT:I

.field protected static final ID_PREFERENCE_PATH:I

.field protected static final ID_PREFERENCE_SUMMARY:I

.field protected static final ID_PREFERENCE_SWITCH:I

.field protected static final ID_PREFERENCE_TITLE:I

.field protected static final PAUSE_BETWEEN_BLINKS:I = 0x64


# instance fields
.field protected currentAnimator:Landroid/animation/AnimatorSet;

.field protected final fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

.field protected final inflater:Landroid/view/LayoutInflater;

.field protected final searchViewController:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;


# direct methods
.method public static synthetic $r8$lambda$HxXG2mHu-alt2JTsHngnauPSqDU(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 301
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$IeT8BrKov-qdaiem8jU_cSOeyzA(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$bindColorViewHolder$5(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N9Sfv0rvcj714PQB_2fZ31fsN0I(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$bindRegularViewHolder$1(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NtX5-MjkWKzuWDourB-8u43Y5Ho(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$bindColorViewHolder$4(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNwFmZNQQaWzcDHkNvnVCQlpnu0(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$bindGroupHeaderViewHolder$6(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SAcmRgV3suuAKPAyn8gDSmw5G3Q(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/widget/ListView;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$navigateAndScrollToPreference$9(Landroid/widget/ListView;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VUO1GqbnwK4X8_weAMyjROfDykA(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$bindRegularViewHolder$0(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoYsnxTWGF5H3ZcVZPBM4SChZ1M()Ljava/lang/String;
    .registers 1

    .line 601
    const-string v0, "Failed to invoke performClick()"

    return-object v0
.end method

.method public static synthetic $r8$lambda$eOp30FlkL5vtrcaUiuh3zOsLZVc(Ljava/lang/Runnable;Landroid/view/View;)Z
    .registers 2

    .line 303
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$r6R2EkHdCMMd2zxd7ruckb8CySM(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/preference/SwitchPreference;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$bindSwitchViewHolder$2(Landroid/preference/SwitchPreference;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y9R9cvKQXxRzBzAfqMpOAJmofks(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$navigateAndScrollToPreference$10(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ymh_aOp8yRI-E9W-S4PcQ8GPReM(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->lambda$bindSwitchViewHolder$3(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "preference_title"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_TITLE:I

    .line 59
    const-string v1, "preference_summary"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_SUMMARY:I

    .line 61
    const-string v1, "preference_path"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_PATH:I

    .line 63
    const-string v1, "preference_switch"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_SWITCH:I

    .line 65
    const-string v1, "preference_color_dot"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_COLOR_DOT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V
    .registers 6
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

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 100
    iput-object p3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    .line 101
    iput-object p4, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->searchViewController:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    return-void
.end method

.method private handlePreferenceClick(Landroid/preference/Preference;)V
    .registers 5

    .line 589
    :try_start_0
    instance-of v0, p1, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;

    .line 590
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->searchViewController:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    .line 591
    invoke-virtual {v1, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->findSearchItemByPreference(Landroid/preference/Preference;)Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 592
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->isEntriesHighlightingApplied()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 593
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->getHighlightedEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->setHighlightedEntriesForDialog([Ljava/lang/CharSequence;)V

    .line 597
    :cond_1c
    const-class v0, Landroid/preference/Preference;

    const-string v1, "performClick"

    const-class v2, Landroid/preference/PreferenceScreen;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 599
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    invoke-interface {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;->getPreferenceScreenForSearch()Landroid/preference/PreferenceScreen;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    .line 601
    new-instance p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$bindColorViewHolder$4(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V
    .registers 2

    .line 264
    iget-object p1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->handlePreferenceClick(Landroid/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$bindColorViewHolder$5(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
    .registers 2

    .line 265
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->navigateAndScrollToPreference(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    return-void
.end method

.method private synthetic lambda$bindGroupHeaderViewHolder$6(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Landroid/view/View;)V
    .registers 3

    .line 270
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->navigateToTargetScreen(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)Landroid/preference/PreferenceScreen;

    return-void
.end method

.method private synthetic lambda$bindRegularViewHolder$0(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;)V
    .registers 5

    .line 217
    iget-object v0, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->handlePreferenceClick(Landroid/preference/Preference;)V

    .line 218
    iget-object v0, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_2b

    .line 219
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->refreshHighlighting()V

    .line 220
    iget-object v0, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->getCurrentEffectiveSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p2, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/16 p1, 0x8

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2b
    return-void
.end method

.method private synthetic lambda$bindRegularViewHolder$1(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
    .registers 2

    .line 225
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->navigateAndScrollToPreference(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    return-void
.end method

.method private synthetic lambda$bindSwitchViewHolder$2(Landroid/preference/SwitchPreference;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V
    .registers 7

    .line 243
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 244
    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 245
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->switchWidget:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 246
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object p2, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object p3, p3, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_22

    const/16 p3, 0x8

    goto :goto_23

    :cond_22
    const/4 p3, 0x0

    :goto_23
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-virtual {p1}, Landroid/preference/Preference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object p2

    if-eqz p2, :cond_37

    .line 249
    invoke-virtual {p1}, Landroid/preference/Preference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 251
    :cond_37
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$bindSwitchViewHolder$3(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
    .registers 2

    .line 253
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->navigateAndScrollToPreference(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    return-void
.end method

.method private synthetic lambda$navigateAndScrollToPreference$10(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .registers 9

    .line 322
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->getMainPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-ne p1, v0, :cond_c

    .line 323
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->getPreferenceListView()Landroid/widget/ListView;

    move-result-object p1

    :goto_a
    move-object v2, p1

    goto :goto_1a

    .line 324
    :cond_c
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    goto :goto_a

    :goto_1a
    if-nez v2, :cond_1d

    goto :goto_24

    .line 328
    :cond_1d
    invoke-virtual {p0, p2, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->findPreferencePosition(Landroid/preference/Preference;Landroid/widget/ListView;)I

    move-result v5

    const/4 p1, -0x1

    if-ne v5, p1, :cond_25

    :goto_24
    return-void

    .line 331
    :cond_25
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    .line 332
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result p2

    if-lt v5, p1, :cond_4d

    if-gt v5, p2, :cond_4d

    sub-int p1, v5, p1

    .line 336
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    if-lez p1, :cond_49

    const/16 p2, 0x12c

    .line 342
    invoke-virtual {v2, p1, p2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 346
    :cond_49
    invoke-virtual {p0, v2, v5}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->highlightPreferenceAtPosition(Landroid/widget/ListView;I)V

    return-void

    :cond_4d
    const/4 p1, 0x0

    .line 349
    invoke-virtual {v2, v5, p1}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 351
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 353
    new-instance v4, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v5}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/widget/ListView;I)V

    const-wide/16 p1, 0x15e

    .line 358
    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$1;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/widget/ListView;Landroid/os/Handler;Ljava/lang/Runnable;I)V

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private synthetic lambda$navigateAndScrollToPreference$9(Landroid/widget/ListView;I)V
    .registers 4

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->highlightPreferenceAtPosition(Landroid/widget/ListView;I)V

    return-void
.end method


# virtual methods
.method public bindColorViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;Landroid/view/View;)V
    .registers 15

    .line 258
    move-object v0, p1

    check-cast v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 259
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v2, 0x8

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->colorDot:Landroid/view/View;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->getColor()I

    move-result v2

    iget-object v3, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/gold/extension/shared/ui/ColorDot;->applyColorDot(Landroid/view/View;IZ)V

    .line 263
    iget-object v6, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v7, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    new-instance v9, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V

    new-instance v10, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    move-object v4, p0

    move-object v5, p3

    invoke-virtual/range {v4 .. v10}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->setupPreferenceView(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/preference/Preference;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bindDataToViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Ljava/lang/Object;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;Landroid/view/View;)V
    .registers 7

    .line 199
    sget-object v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$2;->$SwitchMap$app$morphe$extension$shared$settings$search$BaseSearchResultItem$ViewType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 205
    const-string p0, "Unknown viewType: "

    invoke-static {p0, p3}, Lcom/google/gson/JsonElement$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 204
    :pswitch_11  #0x7
    check-cast p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->bindNoResultsViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;)V

    return-void

    .line 203
    :pswitch_17  #0x6
    check-cast p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$GroupHeaderViewHolder;

    invoke-virtual {p0, p1, p2, p4}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->bindGroupHeaderViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$GroupHeaderViewHolder;Landroid/view/View;)V

    return-void

    .line 202
    :pswitch_1d  #0x5
    check-cast p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;

    invoke-virtual {p0, p1, p2, p4}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->bindColorViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;Landroid/view/View;)V

    return-void

    .line 201
    :pswitch_23  #0x4
    check-cast p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;

    invoke-virtual {p0, p1, p2, p4}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->bindSwitchViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;Landroid/view/View;)V

    return-void

    .line 200
    :pswitch_29  #0x1, 0x2, 0x3
    check-cast p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;

    invoke-virtual {p0, p1, p2, p4}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->bindRegularViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_29  #00000002
        :pswitch_29  #00000003
        :pswitch_23  #00000004
        :pswitch_1d  #00000005
        :pswitch_17  #00000006
        :pswitch_11  #00000007
    .end packed-switch
.end method

.method public bindGroupHeaderViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$GroupHeaderViewHolder;Landroid/view/View;)V
    .registers 5

    .line 269
    iget-object p2, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$GroupHeaderViewHolder;->pathView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    new-instance p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bindNoResultsViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;)V
    .registers 4

    .line 274
    iget-object p0, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p0, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p0, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/16 p1, 0x8

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object p0, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->getSearchIcon()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bindRegularViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;Landroid/view/View;)V
    .registers 14

    .line 210
    move-object v0, p1

    check-cast v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 211
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->refreshHighlighting()V

    .line 212
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v2, 0x8

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v5, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    new-instance v8, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0, v0, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;)V

    new-instance v9, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v9, p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    move-object v3, p0

    move-object v4, p3

    invoke-virtual/range {v3 .. v9}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->setupPreferenceView(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/preference/Preference;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bindSwitchViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;Landroid/view/View;)V
    .registers 13

    .line 229
    move-object v0, p1

    check-cast v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 230
    iget-object v1, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    move-object v6, v1

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 231
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->switchWidget:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 235
    iget-object v2, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->switchWidget:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eq v2, v1, :cond_2b

    .line 236
    iget-object v2, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->switchWidget:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 237
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->switchWidget:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->jumpDrawablesToCurrentState()V

    .line 239
    :cond_2b
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->summaryView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/16 v2, 0x8

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v4, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->summaryView:Landroid/widget/TextView;

    new-instance v7, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0, v6, p2, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/preference/SwitchPreference;Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;)V

    new-instance v8, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda10;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V

    move-object v2, p0

    move-object v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->setupPreferenceView(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/preference/Preference;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 254
    iget-object p0, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->switchWidget:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/preference/Preference;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public blinkView(Landroid/view/View;)V
    .registers 9

    .line 521
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->currentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 522
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->currentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 524
    :cond_f
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppBackgroundColor()I

    move-result v0

    .line 527
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/high16 v1, 0x3fa00000  # 1.25f

    goto :goto_1f

    :cond_1c
    const v1, 0x3f4ccccd  # 0.8f

    .line 525
    :goto_1f
    invoke-static {v0, v1}, Lcom/gold/extension/shared/Utils;->adjustColorBrightness(IF)I

    move-result v1

    .line 530
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 534
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 535
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 530
    const-string v4, "backgroundColor"

    invoke-static {p1, v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x190

    .line 537
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 539
    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 543
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 539
    invoke-static {p1, v4, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 546
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 548
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->currentAnimator:Landroid/animation/AnimatorSet;

    .line 550
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    .line 551
    new-array v3, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 552
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 553
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 555
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->currentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 556
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->currentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public createPreferenceView(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Landroid/view/View;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    if-nez p2, :cond_9

    .line 145
    invoke-virtual {p0, p3, p4}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->inflateViewForType(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 146
    invoke-virtual {p0, p2, p3}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->createViewHolderForType(Landroid/view/View;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;)V

    .line 150
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    .line 151
    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->bindDataToViewHolder(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Ljava/lang/Object;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;Landroid/view/View;)V

    return-object p2
.end method

.method public createViewHolderForType(Landroid/view/View;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;)V
    .registers 4

    .line 160
    sget-object p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$2;->$SwitchMap$app$morphe$extension$shared$settings$search$BaseSearchResultItem$ViewType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_b6

    .line 193
    const-string p0, "Unknown viewType: "

    invoke-static {p0, p2}, Lcom/google/gson/JsonElement$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 187
    :pswitch_11  #0x7
    new-instance p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;-><init>()V

    .line 188
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_TITLE:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;->titleView:Landroid/widget/TextView;

    .line 189
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_SUMMARY:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;->summaryView:Landroid/widget/TextView;

    const p2, 0x1020006

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$NoResultsViewHolder;->iconView:Landroid/widget/ImageView;

    .line 191
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 182
    :pswitch_39  #0x6
    new-instance p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$GroupHeaderViewHolder;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$GroupHeaderViewHolder;-><init>()V

    .line 183
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_PATH:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$GroupHeaderViewHolder;->pathView:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 175
    :pswitch_4c  #0x5
    new-instance p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;-><init>()V

    .line 176
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_TITLE:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->titleView:Landroid/widget/TextView;

    .line 177
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_SUMMARY:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->summaryView:Landroid/widget/TextView;

    .line 178
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_COLOR_DOT:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$ColorViewHolder;->colorDot:Landroid/view/View;

    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 168
    :pswitch_71  #0x4
    new-instance p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;-><init>()V

    .line 169
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_TITLE:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->titleView:Landroid/widget/TextView;

    .line 170
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_SUMMARY:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->summaryView:Landroid/widget/TextView;

    .line 171
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_SWITCH:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$SwitchViewHolder;->switchWidget:Landroid/widget/Switch;

    .line 172
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 162
    :pswitch_98  #0x1, 0x2, 0x3
    new-instance p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;-><init>()V

    .line 163
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_TITLE:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->titleView:Landroid/widget/TextView;

    .line 164
    sget p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->ID_PREFERENCE_SUMMARY:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$RegularViewHolder;->summaryView:Landroid/widget/TextView;

    .line 165
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_98  #00000001
        :pswitch_98  #00000002
        :pswitch_98  #00000003
        :pswitch_71  #00000004
        :pswitch_4c  #00000005
        :pswitch_39  #00000006
        :pswitch_11  #00000007
    .end packed-switch
.end method

.method public findListViewInViewGroup(Landroid/view/View;)Landroid/widget/ListView;
    .registers 4

    .line 463
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_7

    .line 464
    check-cast p1, Landroid/widget/ListView;

    return-object p1

    .line 466
    :cond_7
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 467
    :goto_e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 468
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->findListViewInViewGroup(Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public findPreferenceByKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/Preference;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 563
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_30

    .line 568
    :cond_a
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_30

    .line 569
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 570
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    return-object v3

    .line 573
    :cond_20
    instance-of v4, v3, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2d

    .line 574
    check-cast v3, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->findPreferenceByKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2d

    return-object v3

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_30
    :goto_30
    return-object v0
.end method

.method public findPreferenceByTitle(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/Preference;
    .registers 7

    const/4 v0, 0x0

    .line 420
    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 421
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 423
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 424
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_31
    return-object v1

    .line 427
    :cond_32
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_3f

    .line 428
    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v1, p2}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->findPreferenceByTitle(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3f

    return-object v1

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_42
    const/4 p0, 0x0

    return-object p0
.end method

.method public findPreferencePosition(Landroid/preference/Preference;Landroid/widget/ListView;)I
    .registers 7

    .line 481
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    const/4 p2, -0x1

    if-nez p0, :cond_8

    return p2

    .line 486
    :cond_8
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_34

    .line 487
    invoke-interface {p0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_16

    goto :goto_30

    .line 491
    :cond_16
    instance-of v3, v2, Landroid/preference/Preference;

    if-eqz v3, :cond_31

    check-cast v2, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 492
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    :goto_30
    return v1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_34
    return p2
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 106
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_a
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->preferenceType:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public abstract getMainPreferenceScreen()Landroid/preference/PreferenceScreen;
.end method

.method public getPreferenceListView()Landroid/widget/ListView;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    invoke-interface {v0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 451
    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->findListViewInViewGroup(Landroid/view/View;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 456
    :cond_f
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    invoke-interface {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 118
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    if-nez p1, :cond_12

    .line 119
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 121
    :cond_12
    iget-object v0, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->preferenceType:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    .line 123
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->createPreferenceView(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;Landroid/view/View;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getViewTypeCount()I
    .registers 1

    .line 112
    invoke-static {}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->values()[Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public hasNavigationCapability(Landroid/preference/Preference;)Z
    .registers 4

    .line 610
    instance-of p0, p1, Landroid/preference/PreferenceScreen;

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    return v0

    .line 612
    :cond_6
    instance-of p0, p1, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    return v1

    .line 614
    :cond_c
    instance-of p0, p1, Landroid/preference/PreferenceGroup;

    if-eqz p0, :cond_1f

    .line 616
    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1e

    invoke-virtual {p1}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return v1

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    return v1
.end method

.method public highlightPreferenceAtPosition(Landroid/widget/ListView;I)V
    .registers 5

    .line 504
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p2, v0, :cond_17

    .line 505
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    if-le p2, v1, :cond_d

    goto :goto_17

    :cond_d
    sub-int/2addr p2, v0

    .line 509
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 511
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->blinkView(Landroid/view/View;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public inflateViewForType(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 156
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->getLayoutResourceId()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled(I)Z
    .registers 2

    .line 128
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;

    if-eqz p0, :cond_10

    .line 130
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->preferenceType:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    sget-object p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->NO_RESULTS:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    if-eq p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public navigateAndScrollToPreference(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)V
    .registers 5

    .line 313
    iget-object v0, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->preferenceType:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    sget-object v1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->URL_LINK:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    if-ne v0, v1, :cond_7

    goto :goto_24

    .line 315
    :cond_7
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->navigateToTargetScreen(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_24

    .line 317
    :cond_e
    instance-of v1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    if-eqz v1, :cond_24

    check-cast p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;

    .line 319
    iget-object p1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    .line 321
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->fragment:Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;

    invoke-interface {v1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$BasePreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda11;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_24
    :goto_24
    return-void
.end method

.method public navigateToTargetScreen(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;)Landroid/preference/PreferenceScreen;
    .registers 5

    .line 390
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->getMainPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 394
    iget-object v1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationKeys:Ljava/util/List;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    .line 395
    iget-object v1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    invoke-virtual {p0, v0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->findPreferenceByKey(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-nez v1, :cond_47

    .line 400
    iget-object v2, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 401
    iget-object p1, p1, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    const-string v2, " > "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 402
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 404
    invoke-virtual {p0, v0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->findPreferenceByTitle(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    .line 408
    :cond_47
    instance-of p1, v1, Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_51

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 409
    invoke-direct {p0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter;->handlePreferenceClick(Landroid/preference/Preference;)V

    return-object v1

    :cond_51
    return-object v0
.end method

.method public normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_9

    return-object v0

    .line 442
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[^\\w\\s]"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setupPreferenceView(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/preference/Preference;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 7

    .line 285
    invoke-virtual {p4}, Landroid/preference/Preference;->isEnabled()Z

    move-result p0

    .line 290
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 291
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p3, 0x0

    if-nez p0, :cond_10

    .line 293
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_10
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p4

    if-eqz p4, :cond_20

    if-eqz p0, :cond_1b

    const/high16 p4, 0x3f800000  # 1.0f

    goto :goto_1d

    :cond_1b
    const/high16 p4, 0x3f000000  # 0.5f

    .line 298
    :goto_1d
    invoke-virtual {p2, p4}, Landroid/view/View;->setAlpha(F)V

    :cond_20
    if-eqz p0, :cond_27

    .line 301
    new-instance p3, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p3, p5}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    :cond_27
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p0, p6}, Lcom/gold/extension/shared/settings/search/BaseSearchResultsAdapter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
