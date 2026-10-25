.class public abstract Lcom/gold/extension/shared/settings/BaseActivityHook;
.super Landroid/app/Activity;
.source "BaseActivityHook.java"


# static fields
.field private static final ENABLE_PREDICTIVE_BACK_ANIMATION:Z = false

.field private static final ID_MORPHE_SETTINGS_FRAGMENTS:I

.field private static final ID_MORPHE_TOOLBAR_PARENT:I

.field public static final LAYOUT_MORPHE_SETTINGS_WITH_TOOLBAR:I

.field public static final MORPHE_SETTINGS_INTENT:Ljava/lang/String; = "youtube_settings_intent"

.field private static final STRING_MORPHE_SETTINGS_TITLE:I

.field protected static toolbarLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public static synthetic $r8$lambda$LncqQqvrNdOALdKsezu_Lw8nj0Y()Ljava/lang/String;
    .registers 1

    .line 88
    const-string v0, "initialize failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$gRmcOs3r0-L9eITOzt-os2rWxiw(Landroid/view/View;)Z
    .registers 1

    .line 129
    instance-of p0, p0, Landroid/widget/TextView;

    return p0
.end method

.method public static synthetic $r8$lambda$wf9W-hWclaZE2YcM4Cry0KXIsWU(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_settings_fragments"

    .line 30
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gold/extension/shared/settings/BaseActivityHook;->ID_MORPHE_SETTINGS_FRAGMENTS:I

    .line 31
    const-string v1, "youtube_toolbar_parent"

    .line 32
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/BaseActivityHook;->ID_MORPHE_TOOLBAR_PARENT:I

    .line 33
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_settings_with_toolbar"

    .line 34
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/BaseActivityHook;->LAYOUT_MORPHE_SETTINGS_WITH_TOOLBAR:I

    .line 35
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->STRING:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_settings_title"

    .line 36
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/settings/BaseActivityHook;->STRING_MORPHE_SETTINGS_TITLE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getAttachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 98
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->MORPHE_LANGUAGE:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/settings/AppLanguage;

    .line 99
    sget-object v1, Lcom/gold/extension/shared/settings/AppLanguage;->DEFAULT:Lcom/gold/extension/shared/settings/AppLanguage;

    if-ne v0, v1, :cond_d

    return-object p0

    .line 103
    :cond_d
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Lcom/gold/extension/shared/settings/BaseActivityHook;Landroid/app/Activity;)V
    .registers 5

    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/BaseActivityHook;->customizeActivityTheme(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BaseActivityHook;->getContentViewResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "youtube_settings_intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 69
    new-instance p0, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 73
    :cond_23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_36

    .line 74
    invoke-static {p1}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    .line 74
    invoke-static {v0, v2, v1}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticApiModelOutline1;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    .line 80
    :cond_36
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BaseActivityHook;->createPreferenceFragment()Landroid/preference/PreferenceFragment;

    move-result-object v0

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/gold/extension/shared/settings/BaseActivityHook;->createToolbar(Landroid/app/Activity;Landroid/preference/PreferenceFragment;)V

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    sget p1, Lcom/gold/extension/shared/settings/BaseActivityHook;->ID_MORPHE_SETTINGS_FRAGMENTS:I

    .line 85
    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    return-void

    :catch_4f
    move-exception p0

    .line 88
    new-instance p1, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setToolbarLayoutParams(Landroid/widget/Toolbar;)V
    .registers 2

    .line 47
    sget-object v0, Lcom/gold/extension/shared/settings/BaseActivityHook;->toolbarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_7

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public createPreferenceFragment()Landroid/preference/PreferenceFragment;
    .registers 1

    .line 172
    new-instance p0, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;-><init>()V

    return-object p0
.end method

.method public createToolbar(Landroid/app/Activity;Landroid/preference/PreferenceFragment;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 113
    sget v0, Lcom/gold/extension/shared/settings/BaseActivityHook;->ID_MORPHE_TOOLBAR_PARENT:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    const-string v1, "youtube_toolbar"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/Utils;->getChildViewByResourceName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sput-object v2, Lcom/gold/extension/shared/settings/BaseActivityHook;->toolbarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment;->setNavigationBarColor(Landroid/view/Window;)V

    .line 121
    new-instance v1, Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BaseActivityHook;->getToolbarBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BaseActivityHook;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/BaseActivityHook;->getNavigationClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget v2, Lcom/gold/extension/shared/settings/BaseActivityHook;->STRING_MORPHE_SETTINGS_TITLE:I

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 127
    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitleMarginStart(I)V

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->setTitleMarginEnd(I)V

    .line 129
    new-instance v2, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticLambda2;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/gold/extension/shared/Utils;->getChildView(Landroid/view/ViewGroup;ZLcom/gold/extension/shared/Utils$MatchFilter;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_65

    .line 131
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41a00000  # 20.0f

    .line 132
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 134
    :cond_65
    invoke-static {v1}, Lcom/gold/extension/shared/settings/BaseActivityHook;->setToolbarLayoutParams(Landroid/widget/Toolbar;)V

    .line 136
    invoke-virtual {p0, p1, v1, p2}, Lcom/gold/extension/shared/settings/BaseActivityHook;->onPostToolbarSetup(Landroid/app/Activity;Landroid/widget/Toolbar;Landroid/preference/PreferenceFragment;)V

    .line 138
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public abstract customizeActivityTheme(Landroid/app/Activity;)V
.end method

.method public getContentViewResourceId()I
    .registers 1

    .line 145
    sget p0, Lcom/gold/extension/shared/settings/BaseActivityHook;->LAYOUT_MORPHE_SETTINGS_WITH_TOOLBAR:I

    return p0
.end method

.method public abstract getNavigationClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
.end method

.method public abstract getNavigationIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getToolbarBackgroundColor()I
.end method

.method public onPostToolbarSetup(Landroid/app/Activity;Landroid/widget/Toolbar;Landroid/preference/PreferenceFragment;)V
    .registers 4

    .line 0
    return-void
.end method
