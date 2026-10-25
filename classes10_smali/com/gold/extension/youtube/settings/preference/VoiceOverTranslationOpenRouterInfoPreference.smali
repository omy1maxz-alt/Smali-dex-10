.class public Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;
.super Lcom/gold/extension/shared/settings/preference/URLLinkPreference;
.source "VoiceOverTranslationOpenRouterInfoPreference.java"


# instance fields
.field private final listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$BKUfsKaYeFweR-DvujoMzyWYMus(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TzG1_HnJVKJOSMUi7U8ZpYRnVbw(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->updateUI()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 30
    const-string p1, "https://openrouter.ai"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 30
    const-string p1, "https://openrouter.ai"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 30
    const-string p1, "https://openrouter.ai"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;)V

    iput-object p1, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 30
    const-string p1, "https://openrouter.ai"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 26
    new-instance p1, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateUI()V
    .registers 3

    .line 35
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    .line 36
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openrouter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 35
    :goto_1d
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 2

    .line 41
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 42
    invoke-direct {p0}, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->updateUI()V

    .line 43
    sget-object p1, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object p1, p1, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPrepareForRemoval()V
    .registers 2

    .line 48
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 49
    sget-object v0, Lcom/gold/extension/shared/settings/Setting;->preferences:Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->preferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/gold/extension/youtube/settings/preference/VoiceOverTranslationOpenRouterInfoPreference;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
