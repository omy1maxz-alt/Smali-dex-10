.class public Lcom/gold/extension/shared/settings/preference/ForceOriginalAudioSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "ForceOriginalAudioSwitchPreference.java"


# static fields
.field private static final available:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->isPatchIncluded()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 18
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 19
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->getPreferredClient()Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    if-eq v0, v1, :cond_2d

    .line 20
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->getPreferredClient()Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_NO_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    if-eq v0, v1, :cond_2d

    .line 21
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->getPreferredClient()Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/shared/spoof/ClientType;->TV:Lcom/gold/extension/shared/spoof/ClientType;

    if-ne v0, v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    :goto_2e
    sput-boolean v0, Lcom/gold/extension/shared/settings/preference/ForceOriginalAudioSwitchPreference;->available:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 24
    sget-boolean p1, Lcom/gold/extension/shared/settings/preference/ForceOriginalAudioSwitchPreference;->available:Z

    if-nez p1, :cond_14

    .line 26
    const-string p1, "youtube_force_original_audio_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-boolean p1, Lcom/gold/extension/shared/settings/preference/ForceOriginalAudioSwitchPreference;->available:Z

    if-nez p1, :cond_14

    .line 26
    const-string p1, "youtube_force_original_audio_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-boolean p1, Lcom/gold/extension/shared/settings/preference/ForceOriginalAudioSwitchPreference;->available:Z

    if-nez p1, :cond_14

    .line 26
    const-string p1, "youtube_force_original_audio_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    sget-boolean p1, Lcom/gold/extension/shared/settings/preference/ForceOriginalAudioSwitchPreference;->available:Z

    if-nez p1, :cond_14

    .line 26
    const-string p1, "youtube_force_original_audio_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_14
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 3

    .line 47
    sget-boolean v0, Lcom/gold/extension/shared/settings/preference/ForceOriginalAudioSwitchPreference;->available:Z

    if-nez v0, :cond_5

    return-void

    .line 51
    :cond_5
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    .line 56
    sget-boolean v0, Lcom/gold/extension/shared/settings/preference/ForceOriginalAudioSwitchPreference;->available:Z

    if-nez v0, :cond_5

    return-void

    .line 60
    :cond_5
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
