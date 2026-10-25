.class public final synthetic Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sammods4h/task/DevMsg$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p1}, Lcom/sammods4h/task/DevMsg;->lambda$showDialog$0(Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
