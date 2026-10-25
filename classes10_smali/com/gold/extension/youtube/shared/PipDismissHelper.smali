.class public final Lcom/gold/extension/youtube/shared/PipDismissHelper;
.super Ljava/lang/Object;
.source "PipDismissHelper.java"


# direct methods
.method public static synthetic $r8$lambda$fPn7l_G3HQpqDcemrZIMBf4JABw(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .registers 2

    .line 37
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gold/extension/youtube/shared/Event;->removeObserver(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissOnPip(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 3

    .line 24
    new-instance v0, Lcom/gold/extension/youtube/shared/PipDismissHelper$1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/shared/PipDismissHelper$1;-><init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V

    .line 36
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    .line 37
    new-instance v1, Lcom/gold/extension/youtube/shared/PipDismissHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/shared/PipDismissHelper$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
