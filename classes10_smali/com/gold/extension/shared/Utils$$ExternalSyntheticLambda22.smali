.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda22;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda22;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->$r8$lambda$M-qqT62488WY8uyFTMUmvlrsuOk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
