.class public final synthetic Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda22;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda22;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda22;->f$0:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda22;->f$1:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->$r8$lambda$dvywrtx38xGWP52RqieIxhxLE_Q(Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method
