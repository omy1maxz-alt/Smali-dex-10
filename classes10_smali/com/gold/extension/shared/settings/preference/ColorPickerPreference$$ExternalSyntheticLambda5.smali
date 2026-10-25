.class public final synthetic Lcom/gold/extension/shared/settings/preference/ColorPickerPreference$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference$$ExternalSyntheticLambda5;->f$0:Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

    iput p2, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference$$ExternalSyntheticLambda5;->f$0:Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

    iget p0, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->$r8$lambda$nFSrUsz5-jEcMJntDEXlqNgOq1Q(Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;I)V

    return-void
.end method
