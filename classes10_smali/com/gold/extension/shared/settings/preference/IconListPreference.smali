.class public Lcom/gold/extension/shared/settings/preference/IconListPreference;
.super Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;
.source "IconListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;
    }
.end annotation


# static fields
.field static final ICON_CORNER_RADIUS_FRACTION:F = 0.22f

.field static final ICON_SIZE_DP:F = 48.0f

.field public static final ID_MORPHE_ITEM_ICON:I

.field public static final LAYOUT_MORPHE_ICON_LIST_ITEM:I

.field private static originalLauncherIconName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static originalNotificationIconName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private iconDrawables:[Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ObwHcnUNlv3AfAB9i2eUKbLv9qo(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 177
    new-instance v0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic $r8$lambda$kC6UDBSgvHDGKsCEg2NsH7Oi_8k(Lcom/gold/extension/shared/settings/preference/IconListPreference;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->lambda$showDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r8AKqfhfGFwoqMVGCyCeka1X9Tc(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 178
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->resolveOriginalIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x8DHJfPAQCsvwGgnp8zcK26ARAM(Lcom/gold/extension/shared/settings/preference/IconListPreference;[Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->lambda$showDialog$3([Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_icon_list_item"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->LAYOUT_MORPHE_ICON_LIST_ITEM:I

    .line 60
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_item_icon"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->ID_MORPHE_ITEM_ICON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 120
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private static buildIconDrawable(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/drawable/Drawable;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 163
    const-string v0, "youtube_adaptive_foreground_"

    const-string v1, "youtube_adaptive_background_"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->resolveResId(Ljava/lang/String;)I

    move-result v1

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->resolveResId(Ljava/lang/String;)I

    move-result p1

    if-eqz v1, :cond_2c

    .line 166
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v2

    :goto_2d
    if-eqz p1, :cond_34

    .line 167
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_35

    :cond_34
    move-object p1, v2

    :goto_35
    if-nez v0, :cond_3c

    if-eqz p1, :cond_3a

    goto :goto_3c

    :cond_3a
    const/4 v1, 0x0

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 v1, 0x1

    :goto_3d
    if-eqz v0, :cond_4b

    if-eqz p1, :cond_4b

    .line 173
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v0, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_57

    .line 176
    :cond_4b
    new-instance v3, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p0}, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    invoke-static {p1, v3}, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 181
    :goto_57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v3, p2, p3, v1}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->renderToRounded(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IFZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5f} :catch_60

    return-object p0

    :catch_60
    return-object v2
.end method

.method public static getOriginalNotificationIconName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 84
    sget-object v0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->originalNotificationIconName:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$showDialog$2(Landroid/content/DialogInterface;)V
    .registers 2

    .line 269
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->clearHighlightedEntriesForDialog()V

    return-void
.end method

.method private synthetic lambda$showDialog$3([Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    .line 276
    aget-object p1, p1, p6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_29

    .line 278
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->getStaticSummary()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_23

    .line 280
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p4

    if-eqz p4, :cond_23

    .line 281
    array-length p5, p4

    if-ge p6, p5, :cond_23

    .line 282
    aget-object p4, p4, p6

    invoke-virtual {p0, p4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    :cond_23
    invoke-virtual {p2, p1}, Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;->setSelectedValue(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 288
    :cond_29
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->clearHighlightedEntriesForDialog()V

    .line 289
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static renderToRounded(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IFZ)Landroid/graphics/drawable/Drawable;
    .registers 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 196
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    int-to-float v5, p2

    .line 199
    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v5

    move v8, p3

    move v7, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 200
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    if-eqz p4, :cond_30

    const/high16 p3, 0x3fc00000  # 1.5f

    mul-float/2addr v5, p3

    .line 204
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p3

    sub-int/2addr p3, p2

    .line 205
    div-int/lit8 p3, p3, 0x2

    neg-int p4, p3

    add-int/2addr p2, p3

    .line 206
    invoke-virtual {p1, p4, p4, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_34

    :cond_30
    const/4 p3, 0x0

    .line 208
    invoke-virtual {p1, p3, p3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    :goto_34
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 211
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static resolveOriginalIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 93
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->originalLauncherIconName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 94
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->MIPMAP:Lcom/gold/extension/shared/ResourceType;

    sget-object v1, Lcom/gold/extension/shared/settings/preference/IconListPreference;->originalLauncherIconName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1b

    if-eqz v0, :cond_1b

    return-object v0

    .line 101
    :catch_1b
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static resolveResId(Ljava/lang/String;)I
    .registers 2

    .line 188
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 189
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->MIPMAP:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_f
    return v0
.end method

.method public static setOriginalLauncherIconName(Ljava/lang/String;)V
    .registers 1
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    sput-object p0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->originalLauncherIconName:Ljava/lang/String;

    return-void
.end method

.method public static setOriginalNotificationIconName(Ljava/lang/String;)V
    .registers 1
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    sput-object p0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->originalNotificationIconName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public resolveIconDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 139
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 140
    new-array p0, v1, [Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 142
    :cond_a
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x42400000  # 48.0f

    const/4 v4, 0x1

    .line 144
    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v2

    const v4, 0x3e6147ae  # 0.22f

    mul-float/2addr v3, v4

    .line 147
    array-length v4, v0

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 148
    :goto_29
    array-length v5, v0

    if-ge v1, v5, :cond_41

    .line 149
    aget-object v5, v0, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-static {p0, v5, v2, v3}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->buildIconDrawable(Landroid/content/Context;Ljava/lang/String;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_41
    return-object v4
.end method

.method public setIconDrawables([Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # [Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->iconDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public showDialog(Landroid/os/Bundle;)V
    .registers 19

    move-object/from16 v0, p0

    .line 216
    iget-object v1, v0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->iconDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_c

    .line 217
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->resolveIconDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->iconDrawables:[Landroid/graphics/drawable/Drawable;

    .line 222
    :cond_c
    iget-object v1, v0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->iconDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_bb

    aget-object v5, v1, v4

    if-eqz v5, :cond_b7

    .line 230
    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 231
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->getEntriesForDialog()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 232
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 234
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v2, 0x102000a

    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    const/4 v2, 0x1

    .line 236
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    move-object v7, v6

    .line 238
    new-instance v6, Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;

    sget v8, Lcom/gold/extension/shared/settings/preference/IconListPreference;->LAYOUT_MORPHE_ICON_LIST_ITEM:I

    .line 243
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/gold/extension/shared/settings/preference/IconListPreference;->iconDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v6 .. v12}, Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    move-object v5, v6

    move-object v4, v10

    .line 246
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_65

    .line 250
    array-length v8, v4

    move v9, v3

    :goto_4d
    if-ge v9, v8, :cond_65

    .line 251
    aget-object v10, v4, v9

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 252
    invoke-virtual {v1, v9, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 253
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_65

    :cond_62
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 261
    :cond_65
    :goto_65
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_76

    :cond_74
    const-string v6, ""

    :goto_76
    new-instance v12, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda3;

    invoke-direct {v12, v0}, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/shared/settings/preference/IconListPreference;)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, v16

    .line 259
    invoke-static/range {v6 .. v15}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v6

    .line 268
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/app/Dialog;

    .line 269
    new-instance v8, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda4;-><init>(Lcom/gold/extension/shared/settings/preference/IconListPreference;)V

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 271
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/widget/LinearLayout;

    .line 272
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-direct {v2, v9, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v1, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v2, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v4, v5, v7}, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/shared/settings/preference/IconListPreference;[Ljava/lang/CharSequence;Lcom/gold/extension/shared/settings/preference/IconListPreference$IconListPreferenceAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 292
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void

    :cond_b7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    .line 226
    :cond_bb
    invoke-super/range {p0 .. p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method
