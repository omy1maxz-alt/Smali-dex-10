.class public final Lcom/gold/extension/youtube/settings/preference/CustomVideoSpeedListPreference;
.super Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;
.source "CustomVideoSpeedListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    .line 55
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;)V

    .line 21
    sget-object p1, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->customPlaybackSpeeds:[F

    .line 22
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 23
    new-array v2, v0, [Ljava/lang/String;

    .line 24
    new-array v0, v0, [Ljava/lang/String;

    .line 27
    const-string v3, "youtube_custom_playback_speeds_auto"

    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 28
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    iget-object v3, v3, Lcom/gold/extension/shared/settings/FloatSetting;->defaultValue:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    .line 31
    array-length v3, p1

    move v5, v1

    :goto_25
    if-ge v4, v3, :cond_46

    aget v6, p1, v4

    .line 32
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 33
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 34
    aput-object v6, v0, v5

    add-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 38
    :cond_46
    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object p1, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->customPlaybackSpeeds:[F

    .line 22
    array-length p2, p1

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 23
    new-array v1, p2, [Ljava/lang/String;

    .line 24
    new-array p2, p2, [Ljava/lang/String;

    .line 27
    const-string v2, "youtube_custom_playback_speeds_auto"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 28
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    iget-object v2, v2, Lcom/gold/extension/shared/settings/FloatSetting;->defaultValue:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v3

    .line 31
    array-length v2, p1

    move v4, v0

    :goto_25
    if-ge v3, v2, :cond_46

    aget v5, p1, v3

    .line 32
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 34
    aput-object v5, p2, v4

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 38
    :cond_46
    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget-object p1, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->customPlaybackSpeeds:[F

    .line 22
    array-length p2, p1

    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 23
    new-array v0, p2, [Ljava/lang/String;

    .line 24
    new-array p2, p2, [Ljava/lang/String;

    .line 27
    const-string v1, "youtube_custom_playback_speeds_auto"

    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    iget-object v1, v1, Lcom/gold/extension/shared/settings/FloatSetting;->defaultValue:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    .line 31
    array-length v1, p1

    move v3, p3

    :goto_25
    if-ge v2, v1, :cond_46

    aget v4, p1, v2

    .line 32
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 34
    aput-object v4, p2, v3

    add-int/2addr v3, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 38
    :cond_46
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    sget-object p1, Lcom/gold/extension/youtube/patches/playback/speed/CustomPlaybackSpeedPatch;->customPlaybackSpeeds:[F

    .line 22
    array-length p2, p1

    const/4 p3, 0x1

    add-int/2addr p2, p3

    .line 23
    new-array p4, p2, [Ljava/lang/String;

    .line 24
    new-array p2, p2, [Ljava/lang/String;

    .line 27
    const-string v0, "youtube_custom_playback_speeds_auto"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p4, v1

    .line 28
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->PLAYBACK_SPEED_DEFAULT:Lcom/gold/extension/shared/settings/FloatSetting;

    iget-object v0, v0, Lcom/gold/extension/shared/settings/FloatSetting;->defaultValue:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 31
    array-length v0, p1

    move v2, p3

    :goto_25
    if-ge v1, v0, :cond_46

    aget v3, p1, v1

    .line 32
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p4, v2

    .line 34
    aput-object v3, p2, v2

    add-int/2addr v2, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 38
    :cond_46
    invoke-virtual {p0, p4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method
