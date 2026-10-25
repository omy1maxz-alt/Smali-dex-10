.class public final synthetic Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;

.field public final synthetic f$1:Ljava/util/TreeSet;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Ljava/util/TreeSet;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda7;->f$1:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference$$ExternalSyntheticLambda7;->f$1:Ljava/util/TreeSet;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;->$r8$lambda$LuLKcLn3uf1s985EG60OVpf6QXI(Lcom/gold/extension/shared/settings/preference/FeatureFlagsManagerPreference;Ljava/util/TreeSet;)V

    return-void
.end method
