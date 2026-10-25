.class public final synthetic Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/UserStats;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/UserStats;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockStatsPreferenceCategory;->$r8$lambda$JW7aHb6-zjCVqspkOQqcDSH4zs8(Lcom/gold/extension/shared/sponsorblock/objects/UserStats;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
