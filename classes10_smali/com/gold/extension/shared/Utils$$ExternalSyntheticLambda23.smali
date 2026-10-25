.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/AppLanguage;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/AppLanguage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda23;->f$0:Lcom/gold/extension/shared/settings/AppLanguage;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda23;->f$0:Lcom/gold/extension/shared/settings/AppLanguage;

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->$r8$lambda$qhCLtU1ZJNM-h7zL30aUsN7soAM(Lcom/gold/extension/shared/settings/AppLanguage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
