.class public final Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;
.super Landroid/preference/Preference;
.source "SwipeZonePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;
    }
.end annotation


# instance fields
.field private lastBrightnessColor:Ljava/lang/String;

.field private lastBrightnessEnabled:Z

.field private lastSpeedColor:Ljava/lang/String;

.field private lastSpeedEnabled:Z

.field private lastSpeedZoneHeight:I

.field private lastVolumeColor:Ljava/lang/String;

.field private lastVolumeEnabled:Z

.field private lastZoneWidth:I

.field private final listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private zoneView:Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;


# direct methods
.method public static synthetic $r8$lambda$3-Ph3OPElVCcv-8rJHOYeoeUuFU()Ljava/lang/String;
    .registers 1

    .line 62
    const-string v0, "updateUI"

    return-object v0
.end method

.method public static synthetic $r8$lambda$mWhgdZ8obl9WEIm2GhkdWQ6eIvs(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->updateUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$sS9Ph-c3EiUvYjn_ogOokP1D5ME(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastZoneWidth:I

    .line 55
    iput p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedZoneHeight:I

    .line 57
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 110
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastZoneWidth:I

    .line 55
    iput p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedZoneHeight:I

    .line 57
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 105
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastZoneWidth:I

    .line 55
    iput p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedZoneHeight:I

    .line 57
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 100
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastZoneWidth:I

    .line 55
    iput p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedZoneHeight:I

    .line 57
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 95
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->init()V

    return-void
.end method

.method private addChangeListener()V
    .registers 2

    .line 114
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private init()V
    .registers 2

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 58
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeChangeListener()V
    .registers 2

    .line 118
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private updateUI()V
    .registers 10

    .line 61
    iget-object v0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->zoneView:Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;

    if-eqz v0, :cond_99

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_99

    .line 62
    :cond_c
    new-instance v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 64
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_BRIGHTNESS_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_VOLUME_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    .line 66
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_OVERLAY_SPEED_COLOR:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v2

    .line 67
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_VOLUME:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 68
    sget-object v4, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v4}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 69
    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_BRIGHTNESS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v5}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 70
    sget-object v6, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_ZONE_WIDTH:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v6}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 71
    sget-object v7, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED_ZONE_HEIGHT:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v7}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 73
    iget-boolean v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastBrightnessEnabled:Z

    if-ne v5, v8, :cond_84

    iget-boolean v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedEnabled:Z

    if-ne v4, v8, :cond_84

    iget-boolean v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastVolumeEnabled:Z

    if-ne v3, v8, :cond_84

    iget v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastZoneWidth:I

    if-ne v6, v8, :cond_84

    iget v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedZoneHeight:I

    if-ne v7, v8, :cond_84

    iget-object v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastBrightnessColor:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    iget-object v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastVolumeColor:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    iget-object v8, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedColor:Ljava/lang/String;

    .line 80
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_99

    .line 81
    :cond_84
    iput v6, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastZoneWidth:I

    .line 82
    iput-object v0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastBrightnessColor:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastVolumeColor:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedColor:Ljava/lang/String;

    .line 85
    iput-boolean v5, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastBrightnessEnabled:Z

    .line 86
    iput-boolean v3, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastVolumeEnabled:Z

    .line 87
    iput-boolean v4, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedEnabled:Z

    .line 88
    iput v7, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->lastSpeedZoneHeight:I

    .line 89
    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->zoneView:Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_99
    :goto_99
    return-void
.end method


# virtual methods
.method public onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 2

    .line 123
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 124
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->updateUI()V

    .line 125
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->addChangeListener()V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 2

    .line 155
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 156
    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->zoneView:Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;

    if-eqz p0, :cond_a

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 142
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    sget v0, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    new-instance v0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->zoneView:Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference$ZoneView;

    .line 147
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43020000  # 130.0f

    .line 148
    invoke-static {v1}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public onPrepareForRemoval()V
    .registers 1

    .line 130
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 131
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/SwipeZonePreference;->removeChangeListener()V

    return-void
.end method
