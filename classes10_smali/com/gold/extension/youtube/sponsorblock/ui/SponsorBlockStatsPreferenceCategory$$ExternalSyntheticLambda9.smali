.class public final synthetic Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;

.field public final synthetic f$1:Landroid/preference/Preference;

.field public final synthetic f$2:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;Landroid/preference/Preference;Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;

    iput-object p2, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;->f$1:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;->f$2:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;

    iget-object v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;->f$1:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda9;->f$2:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->$r8$lambda$KbO2en_uZfvNCZY2qh9RSMYzAng(Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;Landroid/preference/Preference;Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V

    return-void
.end method
