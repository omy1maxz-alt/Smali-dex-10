.class public final synthetic Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda20;
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

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda20;->f$0:Landroid/widget/ListView;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda20;->f$1:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda20;->f$0:Landroid/widget/ListView;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda20;->f$1:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->$r8$lambda$AX8BhG5UrRyN20T353M4Kzv5E8Y(Landroid/widget/ListView;Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$FlagAdapter;)V

    return-void
.end method
