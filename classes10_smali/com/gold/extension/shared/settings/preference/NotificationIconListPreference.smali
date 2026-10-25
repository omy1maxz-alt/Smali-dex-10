.class public Lcom/gold/extension/shared/settings/preference/NotificationIconListPreference;
.super Lcom/gold/extension/shared/settings/preference/IconListPreference;
.source "NotificationIconListPreference.java"


# static fields
.field private static final NOTIF_ICON_SIZE_FRACTION:F = 0.6f


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/IconListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private static buildNotificationIconDrawable(Landroid/content/Context;Ljava/lang/String;IFII)Landroid/graphics/drawable/Drawable;
    .registers 23
    .param p4  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p5  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 100
    const-string v5, "youtube_notification_icon_"

    const/4 v6, 0x0

    :try_start_d
    const-string v7, "original"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v8, 0x3f19999a  # 0.6f

    if-eqz v7, :cond_7b

    .line 101
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->getOriginalNotificationIconName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 103
    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->resolveResId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7a

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 107
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 108
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    int-to-float v12, v2

    .line 110
    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v13, v12

    move/from16 v15, p3

    move/from16 v14, p3

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 111
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 112
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    mul-float/2addr v12, v8

    .line 113
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v2, v4

    .line 114
    div-int/lit8 v2, v2, 0x2

    .line 115
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v3, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/2addr v4, v2

    .line 116
    invoke-virtual {v1, v2, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_7a
    return-object v6

    .line 125
    :cond_7b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->resolveResId(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8e

    return-object v6

    .line 128
    :cond_8e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_95

    return-object v6

    .line 131
    :cond_95
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 132
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    int-to-float v12, v2

    .line 135
    sget-object v16, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v13, v12

    move/from16 v15, p3

    move/from16 v14, p3

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 136
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 137
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    mul-float/2addr v12, v8

    .line 139
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v2, v4

    .line 140
    div-int/lit8 v2, v2, 0x2

    .line 141
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v3, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/2addr v4, v2

    .line 142
    invoke-virtual {v1, v2, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_de} :catch_df

    return-object v1

    :catch_df
    return-object v6
.end method

.method private static isLightColor(I)Z
    .registers 7
    .param p0  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 0
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    const-wide v2, 0x3fd322d0e5604189L  # 0.299

    int-to-double v4, v0

    mul-double/2addr v4, v2

    const-wide v2, 0x3fe2c8b439581062L  # 0.587

    int-to-double v0, v1

    mul-double/2addr v0, v2

    add-double/2addr v4, v0

    const-wide v0, 0x3fbd2f1a9fbe76c9L  # 0.114

    int-to-double v2, p0

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    const-wide v0, 0x406fe00000000000L  # 255.0

    div-double/2addr v4, v0

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    cmpl-double p0, v4, v0

    if-lez p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public resolveIconDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 65
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 66
    new-array p0, v1, [Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_a
    move v2, v1

    .line 68
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x42400000  # 48.0f

    const/4 v5, 0x1

    .line 70
    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v3

    const v5, 0x3e6147ae  # 0.22f

    mul-float/2addr v4, v5

    .line 73
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v5

    .line 74
    invoke-static {v5}, Lcom/gold/extension/shared/settings/preference/NotificationIconListPreference;->isLightColor(I)Z

    move-result v6

    if-eqz v6, :cond_34

    const/high16 v6, -0x1000000

    goto :goto_35

    :cond_34
    const/4 v6, -0x1

    :goto_35
    const/4 v7, 0x0

    .line 79
    :try_start_36
    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v8, "youtube_custom_branding_icon"

    invoke-interface {p0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 80
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_48} :catch_48

    .line 83
    :catch_48
    :cond_48
    array-length p0, v0

    new-array p0, p0, [Landroid/graphics/drawable/Drawable;

    move v8, v2

    .line 84
    :goto_4c
    array-length v2, v0

    if-ge v8, v2, :cond_6f

    .line 85
    aget-object v2, v0, v8

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v9, "follow"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_66

    if-eqz v7, :cond_66

    move-object v2, v7

    .line 89
    :cond_66
    invoke-static/range {v1 .. v6}, Lcom/gold/extension/shared/settings/preference/NotificationIconListPreference;->buildNotificationIconDrawable(Landroid/content/Context;Ljava/lang/String;IFII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, p0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_6f
    return-object p0
.end method
