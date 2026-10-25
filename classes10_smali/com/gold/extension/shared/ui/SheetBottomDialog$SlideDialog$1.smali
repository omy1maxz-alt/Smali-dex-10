.class Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SheetBottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog$1;->this$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 432
    iget-object p1, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog$1;->this$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    invoke-static {p1}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->access$001(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 433
    iget-object p0, p0, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog$1;->this$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->-$$Nest$fputisDismissing(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Z)V

    return-void
.end method
