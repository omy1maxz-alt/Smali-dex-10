.class public final synthetic Lcom/gold/extension/youtube/shared/PipDismissHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/shared/PipDismissHelper$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/shared/PipDismissHelper$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/shared/PipDismissHelper;->$r8$lambda$fPn7l_G3HQpqDcemrZIMBf4JABw(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void
.end method
