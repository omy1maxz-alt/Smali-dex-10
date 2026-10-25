.class public Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;
.super Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;
.source "SegmentCategoryPreference.java"


# instance fields
.field public category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field private dialogBehaviors:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

.field private final prefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private selectedDialogEntryIndex:I

.field private widgetColorDot:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$9Xb8gsh_DmAwg2MyO0DfO4btssA(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MRJLLAuof0SBM44u5zCF4MjdH4o(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->lambda$createExtraDialogContentView$2(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$awwf6RwqrtCEt1gBAgbCYLUAnWQ(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->lambda$updateUI$4()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i5XDOeSwonKvxWS7zQXGBEUZTkQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setText failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mAqOnKSUMk7391ljWVyw7nwssh0()Ljava/lang/String;
    .registers 1

    .line 196
    const-string v0, "Reset button failure"

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;)V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->prefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 64
    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->applyCommonStyling()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;)V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->prefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 69
    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->applyCommonStyling()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;)V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->prefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 59
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->bindCategory(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    return-void
.end method

.method private applyCommonStyling()V
    .registers 2

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->setOpacitySliderEnabled(Z)V

    .line 106
    sget v0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->LAYOUT_MORPHE_COLOR_DOT_WIDGET:I

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private bindCategory(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 95
    invoke-virtual {p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->colorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 96
    iget-object v0, p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->title:Lcom/gold/extension/shared/StringRef;

    invoke-virtual {v0}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->description:Lcom/gold/extension/shared/StringRef;

    invoke-virtual {v0}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->applyCommonStyling()V

    .line 100
    invoke-virtual {p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->colorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->setText(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->updateUI()V

    return-void
.end method

.method private static byColorSettingKey(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 235
    :cond_4
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->activeCategories()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 236
    invoke-virtual {v4}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->colorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v5

    iget-object v5, v5, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-object v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method

.method private synthetic lambda$createExtraDialogContentView$2(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 173
    iput p2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->selectedDialogEntryIndex:I

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 55
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateUI$4()Ljava/lang/String;
    .registers 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateUI failure for category: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->keyValue:Ljava/lang/String;

    goto :goto_10

    :cond_e
    const-string p0, "<unbound>"

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateWidgetColorDot()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->widgetColorDot:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-nez v1, :cond_9

    goto :goto_14

    .line 225
    :cond_9
    invoke-virtual {v1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getColorWithOpacity()I

    move-result v1

    .line 226
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result p0

    .line 223
    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/ui/ColorDot;->applyColorDot(Landroid/view/View;IZ)V

    :cond_14
    :goto_14
    return-void
.end method


# virtual methods
.method public cancelDialogOnTouchOutside()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public createExtraDialogContentView(Landroid/content/Context;)Landroid/view/View;
    .registers 9

    .line 146
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_6
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;->config()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-interface {v0, v1}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;->availableBehaviors(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->dialogBehaviors:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 149
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 150
    iput v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->selectedDialogEntryIndex:I

    const/4 v1, 0x0

    move v2, v1

    .line 151
    :goto_21
    iget-object v3, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->dialogBehaviors:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    array-length v4, v3

    if-ge v2, v4, :cond_36

    .line 152
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->morpheKeyValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 153
    iput v2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->selectedDialogEntryIndex:I

    goto :goto_36

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 158
    :cond_36
    :goto_36
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 159
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v3

    move v4, v1

    .line 164
    :goto_44
    iget-object v5, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->dialogBehaviors:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    array-length v5, v5

    if-ge v4, v5, :cond_71

    .line 165
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 166
    iget-object v6, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->dialogBehaviors:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->description:Lcom/gold/extension/shared/StringRef;

    invoke-virtual {v6}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    invoke-virtual {v5, v4}, Landroid/view/View;->setId(I)V

    .line 169
    iget v6, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->selectedDialogEntryIndex:I

    if-ne v4, v6, :cond_67

    move v6, v2

    goto :goto_68

    :cond_67
    move v6, v1

    :goto_68
    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 170
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 173
    :cond_71
    new-instance p1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;)V

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 174
    sget p0, Lcom/gold/extension/shared/ui/Dim;->dp10:I

    invoke-virtual {v0, p0, v1, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method public onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 3

    .line 74
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 75
    iget-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-nez p1, :cond_1b

    .line 76
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->byColorSettingKey(Ljava/lang/String;)Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 82
    invoke-direct {p0, v0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->bindCategory(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    goto :goto_1b

    .line 79
    :cond_15
    const-string p0, "SegmentCategoryPreference: no SegmentCategory matches key: "

    invoke-static {p0, p1}, Lcom/google/gson/JsonElement$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_1b
    :goto_1b
    sget-object p1, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object p1, p1, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->prefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 3

    .line 214
    invoke-super {p0, p1}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->onBindView(Landroid/view/View;)V

    .line 216
    sget v0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->ID_PREFERENCE_COLOR_DOT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->widgetColorDot:Landroid/view/View;

    .line 217
    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->updateWidgetColorDot()V

    return-void
.end method

.method public onDialogNeutralClicked()V
    .registers 2

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-nez v0, :cond_5

    return-void

    .line 193
    :cond_5
    invoke-virtual {v0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getDefaultColorWithOpacity()I

    move-result v0

    .line 194
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->dialogColorPickerView:Lcom/gold/extension/shared/settings/preference/ColorPickerView;

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/preference/ColorPickerView;->setColor(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 196
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDialogOkClicked()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-eqz v0, :cond_17

    iget v1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->selectedDialogEntryIndex:I

    if-ltz v1, :cond_17

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->dialogBehaviors:[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-eqz p0, :cond_17

    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 184
    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->setBehaviour(Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;)V

    .line 185
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->updateEnabledCategories()V

    :cond_17
    return-void
.end method

.method public onPrepareForRemoval()V
    .registers 2

    .line 89
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 90
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->prefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 5

    const v0, 0x3f333333  # 0.7f

    .line 119
    :try_start_3
    invoke-static {p1, v0}, Lcom/gold/extension/shared/sponsorblock/SponsorBlockHelpers;->migrateOldColorString(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-nez v0, :cond_c

    goto :goto_4b

    .line 125
    :cond_c
    invoke-super {p0, p1}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->setText(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->setColorWithOpacity(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->updateUI()V

    .line 129
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->colorChangeListener:Lcom/gold/extension/shared/settings/preference/ColorPickerPreference$OnColorChangeListener;

    if-eqz v0, :cond_4b

    .line 130
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v2}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getColorWithOpacity()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference$OnColorChangeListener;->onColorChanged(Ljava/lang/String;I)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_28} :catch_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    .line 139
    new-instance v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_4b

    .line 133
    :catch_33
    const-string p1, "youtube_settings_color_invalid"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-eqz p1, :cond_4b

    .line 135
    invoke-virtual {p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->colorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object p1

    iget-object p1, p1, Lcom/gold/extension/shared/settings/Setting;->defaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->setText(Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public updateUI()V
    .registers 3

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-nez v0, :cond_5

    return-void

    .line 203
    :cond_5
    invoke-virtual {v0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviorSetting()Lcom/gold/extension/shared/settings/StringSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/Setting;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->setEnabled(Z)V

    .line 205
    invoke-direct {p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->updateWidgetColorDot()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    .line 207
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda3;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
