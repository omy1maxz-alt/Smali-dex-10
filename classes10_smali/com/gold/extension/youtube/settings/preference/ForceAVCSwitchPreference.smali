.class public Lcom/gold/extension/youtube/settings/preference/ForceAVCSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "ForceAVCSwitchPreference.java"


# static fields
.field private static final available:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 24
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->isPatchIncluded()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 25
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_CREATOR:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v1, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_65:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v2, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_64:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v3, Lcom/gold/extension/shared/spoof/ClientType;->VISIONOS:Lcom/gold/extension/shared/spoof/ClientType;

    invoke-static {v0, v1, v2, v3}, Lcom/gold/extension/youtube/patches/spoof/SpoofVideoStreamsPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->getPreferredClient()Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    sput-boolean v0, Lcom/gold/extension/youtube/settings/preference/ForceAVCSwitchPreference;->available:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 32
    sget-boolean p1, Lcom/gold/extension/youtube/settings/preference/ForceAVCSwitchPreference;->available:Z

    if-nez p1, :cond_14

    .line 34
    const-string p1, "youtube_force_avc_codec_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-boolean p1, Lcom/gold/extension/youtube/settings/preference/ForceAVCSwitchPreference;->available:Z

    if-nez p1, :cond_14

    .line 34
    const-string p1, "youtube_force_avc_codec_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget-boolean p1, Lcom/gold/extension/youtube/settings/preference/ForceAVCSwitchPreference;->available:Z

    if-nez p1, :cond_14

    .line 34
    const-string p1, "youtube_force_avc_codec_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    sget-boolean p1, Lcom/gold/extension/youtube/settings/preference/ForceAVCSwitchPreference;->available:Z

    if-nez p1, :cond_14

    .line 34
    const-string p1, "youtube_force_avc_codec_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_14
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 3

    .line 55
    sget-boolean v0, Lcom/gold/extension/youtube/settings/preference/ForceAVCSwitchPreference;->available:Z

    if-nez v0, :cond_5

    return-void

    .line 59
    :cond_5
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    .line 64
    sget-boolean v0, Lcom/gold/extension/youtube/settings/preference/ForceAVCSwitchPreference;->available:Z

    if-nez v0, :cond_5

    return-void

    .line 68
    :cond_5
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
