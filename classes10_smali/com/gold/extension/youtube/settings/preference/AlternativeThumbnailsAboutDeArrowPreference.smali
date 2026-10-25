.class public Lcom/gold/extension/youtube/settings/preference/AlternativeThumbnailsAboutDeArrowPreference;
.super Lcom/gold/extension/shared/settings/preference/URLLinkPreference;
.source "AlternativeThumbnailsAboutDeArrowPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;)V

    .line 14
    const-string p1, "https://dearrow.ajay.app"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-string p1, "https://dearrow.ajay.app"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const-string p1, "https://dearrow.ajay.app"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const-string p1, "https://dearrow.ajay.app"

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;->externalURL:Ljava/lang/String;

    return-void
.end method
