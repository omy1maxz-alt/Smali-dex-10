.class public Lcom/gold/extension/shared/settings/preference/URLLinkPreference;
.super Landroid/preference/Preference;
.source "URLLinkPreference.java"


# instance fields
.field protected externalURL:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Gd9V1199-t5_lNe29jccFnuMZsQ(Lcom/gold/extension/shared/settings/preference/URLLinkPreference;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->lambda$new$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jxjnJgnVTskN5oJNCSj_LiML1aA(Lcom/gold/extension/shared/settings/preference/URLLinkPreference;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->lambda$new$1(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/preference/URLLinkPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/preference/URLLinkPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/preference/URLLinkPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    new-instance p1, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/preference/URLLinkPreference;)V

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/String;
    .registers 2

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "URL not set "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Landroid/preference/Preference;)Z
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 22
    new-instance p1, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/preference/URLLinkPreference;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x0

    return p0

    .line 25
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetData(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
