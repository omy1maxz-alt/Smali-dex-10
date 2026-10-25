.class Lcom/gold/extension/youtube/shared/PipDismissHelper$1;
.super Ljava/lang/Object;
.source "PipDismissHelper.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/shared/PipDismissHelper;->dismissOnPip(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;


# direct methods
.method public static synthetic $r8$lambda$q4CTWL8-Ox_6AyFFAeGmXfYViUM()Ljava/lang/String;
    .registers 1

    .line 30
    const-string v0, "Dismissing dialog due to PiP mode"

    return-object v0
.end method

.method public constructor <init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/gold/extension/youtube/shared/PipDismissHelper$1;->val$dialog:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/gold/extension/youtube/shared/PlayerType;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/shared/PipDismissHelper$1;->invoke(Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/gold/extension/youtube/shared/PipDismissHelper$1;->val$dialog:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 28
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gold/extension/youtube/shared/Event;->removeObserver(Lkotlin/jvm/functions/Function1;)V

    goto :goto_21

    .line 29
    :cond_10
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_PICTURE_IN_PICTURE:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p1, v0, :cond_21

    .line 30
    new-instance p1, Lcom/gold/extension/youtube/shared/PipDismissHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/youtube/shared/PipDismissHelper$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 31
    iget-object p0, p0, Lcom/gold/extension/youtube/shared/PipDismissHelper$1;->val$dialog:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->dismiss()V

    .line 33
    :cond_21
    :goto_21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
