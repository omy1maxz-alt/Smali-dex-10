.class public Lcom/gold/extension/shared/settings/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8ntptrilnvLaSVl0c00h-JdvZ1w(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;[I)V
    .registers 3

    .line 177
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetsetting(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Lcom/gold/extension/shared/settings/IntegerSetting;

    move-result-object p0

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B_vAvMeOYJVceg1JnSSWp7OxpGM()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$GZqKYPpI3Gsp2IICzQg45fgBS84(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;[ILandroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 7

    .line 181
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetsetting(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Lcom/gold/extension/shared/settings/IntegerSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->valueToProgress(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p3, p1, p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->updateLabel(Landroid/widget/TextView;ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smupdateLabel(Landroid/widget/TextView;ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->updateLabel(Landroid/widget/TextView;ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->REGISTRY:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->init()V

    return-void
.end method

.method public static configFor(Lcom/gold/extension/shared/settings/IntegerSetting;)Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 56
    sget-object v0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->REGISTRY:Ljava/util/Map;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    return-object p0
.end method

.method public static formatLabel(ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;
    .registers 2

    .line 199
    invoke-static {p0, p1}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->formatValue(ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatValue(ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;
    .registers 4

    .line 203
    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetdivisor(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 204
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetunit(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d%s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 206
    :cond_1c
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    int-to-float p0, p0

    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetdivisor(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetunit(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f%s"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    return-void
.end method

.method public static progressToValue(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;I)I
    .registers 3

    .line 214
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetmin(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v0

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetstep(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result p0

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static register(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V
    .registers 3

    .line 50
    sget-object v0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->REGISTRY:Ljava/util/Map;

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetsetting(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Lcom/gold/extension/shared/settings/IntegerSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private showDialog()V
    .registers 17

    .line 90
    sget-object v0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->REGISTRY:Ljava/util/Map;

    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    if-eqz v0, :cond_12a

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010435

    const/4 v11, 0x1

    invoke-virtual {v3, v4, v2, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 99
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 101
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetsetting(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Lcom/gold/extension/shared/settings/IntegerSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    .line 103
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    .line 104
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41800000  # 16.0f

    const/4 v6, 0x2

    .line 106
    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x0

    .line 107
    aget v7, v3, v5

    invoke-static {v4, v7, v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->updateLabel(Landroid/widget/TextView;ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V

    .line 109
    new-instance v7, Landroid/widget/SeekBar;

    invoke-direct {v7, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetmax(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v8

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetmin(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetstep(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v9

    div-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 111
    aget v8, v3, v5

    invoke-static {v0, v8}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->valueToProgress(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 113
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    new-instance v2, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$1;

    move-object/from16 v8, p0

    invoke-direct {v2, v8, v3, v0, v4}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$1;-><init>(Lcom/gold/extension/shared/settings/preference/SeekBarPreference;[ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;Landroid/widget/TextView;)V

    invoke-virtual {v7, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 126
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 129
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v12, -0x2

    invoke-direct {v9, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    sget v13, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 133
    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 134
    invoke-virtual {v2, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v2, v7, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 140
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x50

    .line 142
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetmin(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v15

    invoke-static {v15, v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->formatValue(ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41600000  # 14.0f

    .line 146
    invoke-virtual {v14, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    invoke-virtual {v9, v14, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 151
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-direct {v14, v5, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 153
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 154
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 155
    invoke-virtual {v9, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetmax(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v10

    invoke-static {v10, v0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->formatValue(ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v2, v6, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    invoke-virtual {v9, v2, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 164
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    invoke-virtual {v14, v5, v13, v5, v13}, Landroid/view/View;->setPadding(IIII)V

    const/4 v2, -0x1

    .line 167
    invoke-virtual {v14, v9, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 173
    invoke-virtual {v8}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v6, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v3}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;[I)V

    new-instance v5, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda1;-><init>()V

    const-string v8, "youtube_settings_reset"

    .line 179
    invoke-static {v8}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0, v3, v7, v4}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;[ILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    .line 171
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v0

    .line 190
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 191
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_12a
    move-object/from16 v8, p0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SeekBarPreference: no Config registered for key \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static updateLabel(Landroid/widget/TextView;ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)V
    .registers 3

    .line 195
    invoke-static {p1, p2}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->formatLabel(ILcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static valueToProgress(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;I)I
    .registers 4

    .line 210
    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetmin(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v0

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetmax(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetmin(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->-$$Nest$fgetstep(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I

    move-result p0

    div-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public onClick()V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference;->showDialog()V

    return-void
.end method
