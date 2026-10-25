.class public Lcom/gold/extension/shared/sponsorblock/ui/SponsorBlockAboutPreference;
.super Lcom/gold/extension/shared/settings/preference/URLLinkPreference;
.source "SponsorBlockAboutPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;)V

    .line 18
    const-string p1, "https://sponsor.ajay.app"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string p1, "https://sponsor.ajay.app"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const-string p1, "https://sponsor.ajay.app"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    const-string p1, "https://sponsor.ajay.app"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method
