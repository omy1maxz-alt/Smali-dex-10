.class public final synthetic Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroid/preference/Preference;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/preference/Preference;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda5;->f$0:Landroid/preference/Preference;

    iput-object p2, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda5;->f$0:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->$r8$lambda$dUev68LsuyjKmewXVML1ioRSg-c(Landroid/preference/Preference;Ljava/lang/Runnable;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
