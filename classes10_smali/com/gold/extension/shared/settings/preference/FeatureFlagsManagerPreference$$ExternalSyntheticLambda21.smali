.class public final synthetic Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ListView;

.field public final synthetic f$1:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda21;->f$0:Landroid/widget/ListView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda21;->f$1:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda21;->f$0:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda21;->f$1:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->$r8$lambda$GhNzoVFF6utMxp9U7T4s8zqa_yY(Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    return-void
.end method
