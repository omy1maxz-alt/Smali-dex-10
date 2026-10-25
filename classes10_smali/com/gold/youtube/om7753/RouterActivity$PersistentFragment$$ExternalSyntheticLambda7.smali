.class public final synthetic Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda7;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda7;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    check-cast p1, Lfy;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->$r8$lambda$kr1u0SC_rLu2gKNPfS1Q_LAg7bk(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lfy;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
