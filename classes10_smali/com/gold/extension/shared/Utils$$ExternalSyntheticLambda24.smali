.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->$r8$lambda$P4Zlrrm1DJuqTPPlP2jP21KxC1U(Ljava/lang/Runnable;)V

    return-void
.end method
