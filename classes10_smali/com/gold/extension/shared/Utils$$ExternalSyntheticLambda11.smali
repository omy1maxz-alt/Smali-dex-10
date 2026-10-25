.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(IILandroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda11;->f$0:I

    iput p2, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda11;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 3

    .line 0
    iget v0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda11;->f$0:I

    iget v1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda11;->f$1:I

    iget-object p0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda11;->f$2:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/Utils;->$r8$lambda$--7G9_1He1QlXq-6snnjVMLwqjQ(IILandroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
