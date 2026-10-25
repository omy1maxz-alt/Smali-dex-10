.class public Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;
.super Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;
.source "ToolbarPreferenceFragment.java"


# direct methods
.method public static synthetic $r8$lambda$1_dz6v9NnXaTRpFppz6JjKW4tp8(Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->lambda$setPreferenceScreenToolbar$3(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1jfVCNfjAmY974SSFQBQhp3eOXk(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 90
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$83JokE4Nbbf7_l3yHkhzsDAvetw(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 72
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    invoke-static {p1, v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline2;->m()I

    move-result v1

    invoke-static {p1, v1}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    .line 74
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline3;->m()I

    move-result v2

    invoke-static {p1, v2}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/Insets;)I

    move-result v3

    .line 78
    invoke-static {v2}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/Insets;)I

    move-result v2

    .line 79
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/Insets;)I

    move-result v0

    .line 80
    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Insets;)I

    move-result v1

    .line 82
    invoke-virtual {p0, v3, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method public static synthetic $r8$lambda$9AabrYooz5He5ZD6LxomSDCXT64()Ljava/lang/String;
    .registers 1

    .line 122
    const-string v0, "Cannot set navigation bar color, window is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$gIhOGbFyqCLuKVNUjs6GQPItABA(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing preference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;-><init>()V

    return-void
.end method

.method public static customizeBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 149
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static getBackButtonDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/gold/extension/shared/Utils;->appIsUsingBoldIcons()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    const-string v0, "youtube_settings_toolbar_arrow_left_bold"

    goto :goto_b

    .line 140
    :cond_9
    const-string v0, "youtube_settings_toolbar_arrow_left"

    .line 137
    :goto_b
    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getDrawableOrThrow(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->customizeBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private synthetic lambda$setPreferenceScreenToolbar$3(Landroid/preference/Preference;)Z
    .registers 7

    .line 57
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x1020002

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {p0, v1}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->customizeDialogBackground(Landroid/view/ViewGroup;)V

    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->setNavigationBarColor(Landroid/view/Window;)V

    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_2c

    .line 71
    new-instance v2, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 87
    :cond_2c
    new-instance v2, Landroid/widget/Toolbar;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->getBackButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda10;

    invoke-direct {p1, v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda10;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget p1, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p1, v3}, Landroid/widget/Toolbar;->setTitleMargin(IIII)V

    .line 95
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda11;

    const-class v4, Landroid/widget/TextView;

    invoke-direct {p1, v4}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x1

    .line 94
    invoke-static {v2, v4, p1}, Lcom/gold/extension/shared/Utils;->getChildView(Landroid/view/ViewGroup;ZLcom/gold/extension/shared/Utils$MatchFilter;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_6d

    .line 97
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41a00000  # 20.0f

    .line 98
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    :cond_6d
    invoke-virtual {p0, v2}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->customizeToolbar(Landroid/widget/Toolbar;)V

    .line 105
    invoke-virtual {p0, v2, v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->onPostToolbarSetup(Landroid/widget/Toolbar;Landroid/app/Dialog;)V

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return v3
.end method

.method public static setNavigationBarColor(Landroid/view/Window;)V
    .registers 3

    if-nez p0, :cond_b

    .line 122
    new-instance p0, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 126
    :cond_b
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1c

    const/4 v0, 0x1

    .line 128
    invoke-static {p0, v0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticApiModelOutline8;->m(Landroid/view/Window;Z)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public customizeDialogBackground(Landroid/view/ViewGroup;)V
    .registers 2

    .line 156
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppBackgroundColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public customizeToolbar(Landroid/widget/Toolbar;)V
    .registers 2

    .line 163
    invoke-static {p1}, Lcom/gold/extension/shared/settings/BaseActivityHook;->setToolbarLayoutParams(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public onPostToolbarSetup(Landroid/widget/Toolbar;Landroid/app/Dialog;)V
    .registers 3

    .line 0
    return-void
.end method

.method public varargs removePreferences([Ljava/lang/String;)V
    .registers 8

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_20

    aget-object v2, p1, v1

    .line 34
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 36
    invoke-virtual {v3}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 38
    new-instance v5, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda14;

    invoke-direct {v5, v2}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 39
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return-void
.end method

.method public setPreferenceScreenToolbar(Landroid/preference/PreferenceScreen;)V
    .registers 6

    .line 49
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_20

    .line 50
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 51
    instance-of v3, v2, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1d

    .line 53
    move-object v3, v2

    check-cast v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v3}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->setPreferenceScreenToolbar(Landroid/preference/PreferenceScreen;)V

    .line 55
    new-instance v3, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda12;-><init>(Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_20
    return-void
.end method
