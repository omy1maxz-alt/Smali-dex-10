.class public final synthetic Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

.field public final synthetic f$1:Landroid/preference/Preference;

.field public final synthetic f$2:Lcom/gold/extension/shared/settings/Setting;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;Landroid/content/Context;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;->f$1:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;->f$2:Lcom/gold/extension/shared/settings/Setting;

    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;->f$1:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;->f$2:Lcom/gold/extension/shared/settings/Setting;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda6;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->$r8$lambda$__cZSNDQPZzXnDIzhFcVtRUdzC4(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;Landroid/content/Context;)V

    return-void
.end method
