.class public final synthetic Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

.field public final synthetic f$1:Landroid/preference/Preference;

.field public final synthetic f$2:Lcom/gold/extension/shared/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;->f$1:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;->f$2:Lcom/gold/extension/shared/settings/Setting;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;->f$1:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda7;->f$2:Lcom/gold/extension/shared/settings/Setting;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->$r8$lambda$AFwyPw9CDYgy1kmKXVcVjVwHWUU(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/preference/Preference;Lcom/gold/extension/shared/settings/Setting;)V

    return-void
.end method
