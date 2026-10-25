.class public final synthetic Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Landroid/widget/EditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference$$ExternalSyntheticLambda3;->f$0:Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference$$ExternalSyntheticLambda3;->f$0:Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;->$r8$lambda$sJJLwIcCoUB4CgHhJG-tNq1bvro(Lcom/gold/extension/shared/settings/preference/ResettableEditTextPreference;Landroid/widget/EditText;)V

    return-void
.end method
