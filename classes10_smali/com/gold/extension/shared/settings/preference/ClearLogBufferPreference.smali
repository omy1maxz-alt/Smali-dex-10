.class public Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference;
.super Landroid/preference/Preference;
.source "ClearLogBufferPreference.java"


# direct methods
.method public static synthetic $r8$lambda$RvlQojmNBjwMcemyYAkAKXvPLIo(Landroid/preference/Preference;)Z
    .registers 1

    .line 22
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference;->clearLogBuffer()V

    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    new-instance p1, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/ClearLogBufferPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static clearLogBuffer()V
    .registers 1

    .line 44
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    .line 45
    const-string v0, "youtube_debug_logs_disabled"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_16
    const-string v0, "youtube_debug_logs_clear_toast"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/gold/extension/shared/Logger;->clearLogBufferData()V

    return-void
.end method
