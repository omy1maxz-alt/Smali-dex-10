.class public Lcom/gold/extension/youtube/settings/preference/HideAudioFlyoutMenuPreference;
.super Landroid/preference/SwitchPreference;
.source "HideAudioFlyoutMenuPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->spoofingToClientWithNoMultiAudioStreams()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 17
    const-string p1, "youtube_hide_player_flyout_audio_track_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->spoofingToClientWithNoMultiAudioStreams()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 17
    const-string p1, "youtube_hide_player_flyout_audio_track_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->spoofingToClientWithNoMultiAudioStreams()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 17
    const-string p1, "youtube_hide_player_flyout_audio_track_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->spoofingToClientWithNoMultiAudioStreams()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 17
    const-string p1, "youtube_hide_player_flyout_audio_track_not_available"

    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method
