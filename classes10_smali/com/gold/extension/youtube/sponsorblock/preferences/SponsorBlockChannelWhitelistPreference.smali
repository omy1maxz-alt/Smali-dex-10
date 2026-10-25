.class public Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockChannelWhitelistPreference;
.super Landroid/preference/Preference;
.source "SponsorBlockChannelWhitelistPreference.java"


# direct methods
.method public static synthetic $r8$lambda$Yb0TN7c4ZPbo6YJBRzyvQ1iQfZo(Landroid/preference/Preference;)Z
    .registers 1

    .line 44
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->showChannelWhitelistDialog(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockChannelWhitelistPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockChannelWhitelistPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockChannelWhitelistPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockChannelWhitelistPreference;->installClickListener()V

    return-void
.end method

.method private installClickListener()V
    .registers 2

    .line 43
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockChannelWhitelistPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockChannelWhitelistPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
