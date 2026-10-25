.class public final synthetic Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Lfy;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;Lfy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    iput-object p2, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;->f$2:Lfy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    iget-object v1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;->f$1:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;->f$2:Lfy;

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->$r8$lambda$Ej6QwFqRBn5X5x4aANQEI6xPJk0(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;Lfy;)V

    return-void
.end method
