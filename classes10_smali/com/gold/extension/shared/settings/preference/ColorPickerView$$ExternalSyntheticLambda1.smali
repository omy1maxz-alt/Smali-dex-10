.class public final synthetic Lcom/gold/extension/shared/settings/preference/ColorPickerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(IFF)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerView$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerView$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerView$$ExternalSyntheticLambda1;->f$2:F

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 3

    .line 0
    iget v0, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerView$$ExternalSyntheticLambda1;->f$0:I

    iget v1, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerView$$ExternalSyntheticLambda1;->f$1:F

    iget p0, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerView$$ExternalSyntheticLambda1;->f$2:F

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/ColorPickerView;->$r8$lambda$jLstRt77jAhHIiCyRkj0fF8EZ_A(IFF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
