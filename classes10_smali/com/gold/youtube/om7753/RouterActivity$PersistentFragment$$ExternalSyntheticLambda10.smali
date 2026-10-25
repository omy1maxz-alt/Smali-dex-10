.class public final synthetic Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Cancellable;


# instance fields
.field public final synthetic f$0:Landroid/widget/Toast;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Toast;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda10;->f$0:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda10;->f$0:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method
