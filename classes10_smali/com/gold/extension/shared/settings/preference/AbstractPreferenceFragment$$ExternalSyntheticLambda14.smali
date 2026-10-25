.class public final synthetic Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda14;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda14;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda14;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda14;->f$1:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->$r8$lambda$tbJPxUKDNYpKKzydrt1dae-8zog(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;)V

    return-void
.end method
