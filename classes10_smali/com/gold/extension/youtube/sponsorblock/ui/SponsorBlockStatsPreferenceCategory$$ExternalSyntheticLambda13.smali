.class public final synthetic Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;->f$1:Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;

    iput-object p3, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;->f$1:Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;

    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->$r8$lambda$4-UG3_RBMmw3rXMyQW6qUiSLh7g(Ljava/lang/Object;Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Ljava/lang/String;)V

    return-void
.end method
