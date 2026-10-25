.class public Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;
.super Landroid/preference/Preference;
.source "FeatureFlagsManagerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;,
        Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;,
        Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;
    }
.end annotation


# static fields
.field private static final DRAWABLE_MORPHE_SETTINGS_ARROW_LEFT_DOUBLE:I

.field private static final DRAWABLE_MORPHE_SETTINGS_ARROW_LEFT_ONE:I

.field private static final DRAWABLE_MORPHE_SETTINGS_ARROW_RIGHT_DOUBLE:I

.field private static final DRAWABLE_MORPHE_SETTINGS_ARROW_RIGHT_ONE:I

.field private static final DRAWABLE_MORPHE_SETTINGS_COPY_ALL:I

.field private static final DRAWABLE_MORPHE_SETTINGS_DESELECT_ALL:I

.field private static final DRAWABLE_MORPHE_SETTINGS_SELECT_ALL:I

.field private static final FLAGS_TO_IGNORE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-4bvJcNR1mk0wrxvvHg35JhUUgA(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 537
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_e

    iget-boolean p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->isRangeSelecting:Z

    if-eqz p1, :cond_e

    .line 538
    iput-boolean v0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->isRangeSelecting:Z

    :cond_e
    return v0
.end method

.method public static synthetic $r8$lambda$1-kt5GdJht_KEoTteTZbR9Pc8CI(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->lambda$createMoveButtons$10(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3yc2OnoxM0W8uuQH6RGFMwK7NzA(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;Landroid/widget/ListView;)V
    .registers 4

    .line 354
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_e

    const/4 v1, 0x1

    .line 355
    invoke-virtual {p1, v0, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$AX8BhG5UrRyN20T353M4Kzv5E8Y(Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V
    .registers 2

    .line 361
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 362
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$GhNzoVFF6utMxp9U7T4s8zqa_yY(Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V
    .registers 6

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 371
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_44

    .line 372
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 373
    invoke-interface {p1, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 377
    :cond_28
    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->getFullFlags()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 378
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 382
    :cond_44
    const-string p0, "\n"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->setClipboard(Ljava/lang/CharSequence;)V

    .line 384
    const-string p0, "youtube_debug_feature_flags_manager_toast_copied"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8jBsgtyMQO4RhlDWf1jQkX2fq8(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->lambda$new$0(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JXfEKlB0aVfexAUdTDtm9kBRcew(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->lambda$createMoveButtons$7(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LuLKcLn3uf1s985EG60OVpf6QXI(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Ljava/util/TreeSet;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->lambda$showFlagsManagerDialog$1(Ljava/util/TreeSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NwVePwE9l7VE-IybF9cAhBMuvIU(Landroid/widget/EditText;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 329
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x2

    .line 330
    aget-object v2, p1, v1

    if-eqz v2, :cond_2e

    .line 331
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2e

    .line 332
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Rw_6aAYUF0Ykav0fUAfDTSziZ4g(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 7

    .line 522
    iget p2, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->lastClickedPosition:I

    const/4 p3, -0x1

    const/4 p5, 0x1

    if-ne p2, p3, :cond_c

    .line 523
    invoke-virtual {p1, p4, p5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 524
    iput p4, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->lastClickedPosition:I

    return p5

    .line 526
    :cond_c
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 527
    iget p3, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->lastClickedPosition:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    :goto_16
    if-gt p2, p3, :cond_1e

    .line 529
    invoke-virtual {p1, p2, p5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    .line 531
    :cond_1e
    iput-boolean p5, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->isRangeSelecting:Z

    return p5
.end method

.method public static synthetic $r8$lambda$ZG0Yk2LE7BCgqd3haIZpB6oc5cs(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 514
    iget-boolean p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->isRangeSelecting:Z

    if-nez p1, :cond_7

    .line 515
    iput p3, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->lastClickedPosition:I

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 517
    iput-boolean p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;->isRangeSelecting:Z

    return-void
.end method

.method public static synthetic $r8$lambda$aZEfrkrm07YU853bWC9oKjPJsIg(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 455
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$eW7Ertl65BwVnME6jy9vBBKT0VM(Ljava/util/TreeSet;)Ljava/lang/String;
    .registers 3

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feature flags saved. Blocked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pztoXO9ZPPFVztPecA1rVkXmY64(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->lambda$createMoveButtons$9(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7J1jwOBq04CgzNgPJ-ZClM-5Kk()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$z-cJacqMPBexGs5Y28YZK-GLvn8(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->lambda$createMoveButtons$8(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zjrCnAgfaCyt6Ykvt53GLA-grQc(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->resetFlags()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateHeaderCount(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/TextView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->updateHeaderCount(Landroid/widget/TextView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 57
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_settings_select_all"

    .line 58
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_SELECT_ALL:I

    .line 59
    const-string v1, "youtube_settings_deselect_all"

    .line 60
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_DESELECT_ALL:I

    .line 61
    const-string v1, "youtube_settings_copy_all"

    .line 62
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_COPY_ALL:I

    .line 63
    const-string v1, "youtube_settings_arrow_right_one"

    .line 64
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_ARROW_RIGHT_ONE:I

    .line 65
    const-string v1, "youtube_settings_arrow_right_double"

    .line 66
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_ARROW_RIGHT_DOUBLE:I

    .line 67
    const-string v1, "youtube_settings_arrow_left_one"

    .line 68
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_ARROW_LEFT_ONE:I

    .line 69
    const-string v1, "youtube_settings_arrow_left_double"

    .line 70
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_ARROW_LEFT_DOUBLE:I

    const-wide/32 v0, 0x2b48c52

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v1, 0x2b6c3c4

    .line 77
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->FLAGS_TO_IGNORE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance p1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance p1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance p1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    new-instance p1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private createActionButtons(Landroid/content/Context;Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)Landroid/widget/LinearLayout;
    .registers 9

    .line 346
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 349
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    sget v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_SELECT_ALL:I

    new-instance v2, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda19;

    invoke-direct {v2, p3, p2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda19;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;Landroid/widget/ListView;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createButton(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/widget/ImageButton;

    move-result-object v1

    .line 359
    sget v2, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_DESELECT_ALL:I

    new-instance v3, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda20;

    invoke-direct {v3, p2, p3}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda20;-><init>(Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createButton(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/widget/ImageButton;

    move-result-object v2

    .line 365
    sget v3, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_COPY_ALL:I

    new-instance v4, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda21;

    invoke-direct {v4, p2, p3}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda21;-><init>(Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    invoke-direct {p0, p1, v3, v4}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createButton(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/widget/ImageButton;

    move-result-object p0

    .line 387
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 389
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createButton(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/widget/ImageButton;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 441
    new-instance p0, Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 443
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const p2, 0x101045c

    .line 445
    filled-new-array {p2}, [I

    move-result-object p2

    .line 447
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 448
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    .line 451
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget p2, Lcom/gold/extension/shared/ui/Dim;->dp32:I

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 452
    sget p2, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 453
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    new-instance p1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda18;

    invoke-direct {p1, p3}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method private createColumn(Landroid/content/Context;Ljava/util/TreeSet;Landroid/widget/TextView;)Landroid/view/View;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/widget/TextView;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 265
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 268
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createListView(Landroid/content/Context;Ljava/util/TreeSet;Landroid/widget/TextView;)Landroid/util/Pair;

    move-result-object p2

    .line 269
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ListView;

    .line 270
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    .line 272
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createSearchBox(Landroid/content/Context;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;Landroid/widget/ListView;Landroid/widget/TextView;)Landroid/widget/EditText;

    move-result-object p3

    .line 273
    invoke-direct {p0, p1, v1, p2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createActionButtons(Landroid/content/Context;Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)Landroid/widget/LinearLayout;

    move-result-object p0

    .line 275
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v3, 0x41200000  # 10.0f

    .line 278
    invoke-static {v3}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 279
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getEditTextBackground()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    invoke-virtual {v1, v4, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 281
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    .line 282
    invoke-virtual {v1, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 284
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    new-instance p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;

    invoke-direct {p0, v1, p2, v5}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;-><init>(Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference-IA;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private createContentView(Landroid/content/Context;Ljava/util/TreeSet;Ljava/util/TreeSet;)Landroid/view/View;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 181
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 182
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 185
    const-string v2, "youtube_debug_feature_flags_manager_active_header"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    .line 186
    const-string v2, "youtube_debug_feature_flags_manager_blocked_header"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    .line 188
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 189
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000  # 1.0f

    invoke-direct {v2, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v4, p2

    .line 196
    invoke-direct {v0, v1, v4, v6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createColumn(Landroid/content/Context;Ljava/util/TreeSet;Landroid/widget/TextView;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v5, p3

    .line 197
    invoke-direct {v0, v1, v5, v7}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createColumn(Landroid/content/Context;Ljava/util/TreeSet;Landroid/widget/TextView;)Landroid/view/View;

    move-result-object v3

    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;

    .line 202
    invoke-static {v13}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;->-$$Nest$fgetadapter(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;)Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    move-result-object v15

    invoke-direct {v0, v6, v15}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->updateHeaderCount(Landroid/widget/TextView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    .line 203
    invoke-static {v14}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;->-$$Nest$fgetadapter(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;)Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    move-result-object v15

    invoke-direct {v0, v7, v15}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->updateHeaderCount(Landroid/widget/TextView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    .line 206
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 208
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v13

    const/4 v13, -0x1

    invoke-direct {v11, v13, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v10, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    sget v10, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-direct {v11, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 217
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    invoke-direct {v2, v11, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-static/range {v16 .. v16}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;->-$$Nest$fgetlistView(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {v14}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;->-$$Nest$fgetlistView(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ColumnViews;)Landroid/widget/ListView;

    move-result-object v3

    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createMoveButtons(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;

    move-result-object v0

    .line 226
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    new-instance v3, Landroid/widget/Space;

    invoke-direct {v3, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 238
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    invoke-virtual {v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v8
.end method

.method private createHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 3

    .line 252
    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 p1, 0x41800000  # 16.0f

    .line 254
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 255
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 256
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object p0
.end method

.method private createListView(Landroid/content/Context;Ljava/util/TreeSet;Landroid/widget/TextView;)Landroid/util/Pair;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/widget/TextView;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/widget/ListView;",
            "Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance p0, Landroid/widget/ListView;

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x2

    .line 505
    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    const/4 p3, 0x0

    .line 506
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 508
    new-instance p3, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    invoke-direct {p3, p1, p2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;-><init>(Landroid/content/Context;Ljava/util/TreeSet;)V

    .line 509
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 511
    new-instance p1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference-IA;)V

    .line 513
    new-instance p2, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda10;

    invoke-direct {p2, p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda10;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;)V

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 521
    new-instance p2, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda11;

    invoke-direct {p2, p1, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda11;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;Landroid/widget/ListView;)V

    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 536
    new-instance p2, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda12;

    invoke-direct {p2, p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda12;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$ListViewSelectionState;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 543
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p0, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private createMoveButtons(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ListView;",
            "Landroid/widget/ListView;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/widget/LinearLayout;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 403
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 404
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 406
    sget v3, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_ARROW_RIGHT_DOUBLE:I

    new-instance v4, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda14;

    move-object v5, p0

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda14;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {p0, p1, v3, v4}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createButton(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/widget/ImageButton;

    move-result-object v3

    .line 410
    sget v4, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_ARROW_RIGHT_ONE:I

    new-instance v5, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda15;

    move-object v6, p0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda15;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {p0, p1, v4, v5}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createButton(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/widget/ImageButton;

    move-result-object v4

    .line 414
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 418
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 419
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 420
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 422
    sget v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_ARROW_LEFT_ONE:I

    new-instance v5, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda16;

    move-object v8, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v9, p5

    move-object/from16 v12, p6

    move-object/from16 v11, p7

    invoke-direct/range {v5 .. v12}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda16;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {p0, p1, v1, v5}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createButton(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/widget/ImageButton;

    move-result-object v1

    .line 426
    sget v2, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->DRAWABLE_MORPHE_SETTINGS_ARROW_LEFT_DOUBLE:I

    new-instance v5, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda17;

    invoke-direct/range {v5 .. v12}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda17;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-direct {p0, p1, v2, v5}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createButton(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/widget/ImageButton;

    move-result-object p0

    .line 430
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 431
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 433
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private createSearchBox(Landroid/content/Context;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;Landroid/widget/ListView;Landroid/widget/TextView;)Landroid/widget/EditText;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 306
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 307
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setInputType(I)V

    const/high16 v0, 0x41800000  # 16.0f

    .line 308
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 309
    const-string v0, "youtube_debug_feature_flags_manager_search_hint"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 310
    invoke-virtual {v6, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 311
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$1;

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$1;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 327
    new-instance p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda13;

    invoke-direct {p0, v6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda13;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v6
.end method

.method private synthetic lambda$createMoveButtons$10(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 427
    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->moveFlags(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private synthetic lambda$createMoveButtons$7(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 407
    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->moveFlags(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private synthetic lambda$createMoveButtons$8(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 411
    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->moveFlags(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private synthetic lambda$createMoveButtons$9(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 423
    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->moveFlags(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/preference/Preference;)Z
    .registers 2

    .line 95
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->showFlagsManagerDialog()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showFlagsManagerDialog$1(Ljava/util/TreeSet;)V
    .registers 2

    .line 153
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->saveFlags(Ljava/util/TreeSet;)V

    return-void
.end method

.method private moveFlags(Landroid/widget/ListView;Landroid/widget/ListView;Ljava/util/TreeSet;Ljava/util/TreeSet;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Landroid/widget/ListView;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_79

    if-nez p2, :cond_6

    goto/16 :goto_79

    .line 563
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    const/4 v2, 0x0

    if-eqz p7, :cond_18

    .line 567
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    .line 569
    :cond_18
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p7

    .line 570
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    move v4, v2

    :goto_21
    if-ge v4, v3, :cond_3f

    .line 571
    invoke-virtual {p7, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 572
    invoke-interface {v1, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3c

    .line 574
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 580
    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p7

    if-eqz p7, :cond_46

    goto :goto_79

    .line 582
    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p7

    :goto_4a
    if-ge v2, p7, :cond_5b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    .line 583
    invoke-virtual {p3, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {p4, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 588
    :cond_5b
    invoke-virtual {p1}, Landroid/widget/AbsListView;->clearChoices()V

    .line 589
    invoke-virtual {p2}, Landroid/widget/AbsListView;->clearChoices()V

    .line 592
    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->refresh()V

    .line 593
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;->refresh()V

    .line 596
    invoke-direct {p0, p5, v1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->updateHeaderCount(Landroid/widget/TextView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    .line 597
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    invoke-direct {p0, p6, p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->updateHeaderCount(Landroid/widget/TextView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    :cond_79
    :goto_79
    return-void
.end method

.method private resetFlags()V
    .registers 3

    .line 623
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLED_FEATURE_FLAGS:Lcom/gold/extension/shared/settings/StringSetting;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 624
    const-string v0, "youtube_debug_feature_flags_manager_toast_reset"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showRestartDialog(Landroid/content/Context;)V

    return-void
.end method

.method private saveFlags(Ljava/util/TreeSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 607
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 612
    :cond_24
    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLED_FEATURE_FLAGS:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 613
    const-string v0, "youtube_debug_feature_flags_manager_toast_saved"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 614
    new-instance v0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda5;-><init>(Ljava/util/TreeSet;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 616
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->showRestartDialog(Landroid/content/Context;)V

    return-void
.end method

.method private showFlagsManagerDialog()V
    .registers 13

    .line 120
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    .line 121
    const-string p0, "youtube_debug_logs_disabled"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 125
    :cond_16
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->getAllLoggedFlags()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 129
    sget-object v2, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->FLAGS_TO_IGNORE:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 131
    new-instance v3, Ljava/util/TreeSet;

    sget-object v4, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLED_FEATURE_FLAGS:Lcom/gold/extension/shared/settings/StringSetting;

    .line 132
    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v4}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->parseFlags(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 139
    const-string p0, "youtube_debug_feature_flags_manager_toast_no_flags"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 143
    :cond_50
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 144
    invoke-virtual {v10, v3}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 145
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 149
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6e

    :cond_6c
    const-string v1, ""

    :goto_6e
    const-string v2, "youtube_settings_save"

    .line 152
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v11}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Ljava/util/TreeSet;)V

    new-instance v6, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "youtube_settings_reset"

    .line 155
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda9;

    invoke-direct {v8, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda9;-><init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;)V

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 147
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v1

    .line 160
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/widget/LinearLayout;

    .line 161
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 165
    invoke-direct {p0, v0, v10, v11}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->createContentView(Landroid/content/Context;Ljava/util/TreeSet;Ljava/util/TreeSet;)Landroid/view/View;

    move-result-object p0

    .line 166
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    .line 169
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 171
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_be

    const/16 v0, 0x11

    const/16 v1, 0x64

    .line 173
    invoke-static {p0, v0, v6, v1, v6}, Lcom/gold/extension/shared/Utils;->setDialogWindowParameters(Landroid/view/Window;IIIZ)V

    :cond_be
    return-void
.end method

.method private updateHeaderCount(Landroid/widget/TextView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V
    .registers 3

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
