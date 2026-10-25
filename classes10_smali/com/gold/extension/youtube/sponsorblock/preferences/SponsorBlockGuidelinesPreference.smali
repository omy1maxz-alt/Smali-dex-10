.class public Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;
.super Landroid/preference/Preference;
.source "SponsorBlockGuidelinesPreference.java"


# static fields
.field private static final GUIDELINES_URI:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$4zlOsSa-XeYDGXzM7TytmyRdLNo(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;->lambda$installClickListener$1(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$63-fdC4XWJoSFEwF6EVJndJMkRU()Ljava/lang/String;
    .registers 1

    .line 53
    const-string v0, "Open guidelines failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-string v0, "https://wiki.sponsor.ajay.app/w/Guidelines"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;->GUIDELINES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;->installClickListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;->installClickListener()V

    return-void
.end method

.method private installClickListener()V
    .registers 2

    .line 47
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;)V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private synthetic lambda$installClickListener$1(Landroid/preference/Preference;)Z
    .registers 4

    .line 49
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    sget-object v1, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference;->GUIDELINES_URI:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1f

    :catch_16
    move-exception p0

    .line 53
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/preferences/SponsorBlockGuidelinesPreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :goto_1f
    const/4 p0, 0x1

    return p0
.end method
