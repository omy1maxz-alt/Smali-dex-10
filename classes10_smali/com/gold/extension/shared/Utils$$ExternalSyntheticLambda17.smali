.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda17;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda17;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda17;->f$1:I

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->$r8$lambda$kR4ZY8xtEUt9Ds8VVl95a7KbmxM(Ljava/lang/String;I)V

    return-void
.end method
