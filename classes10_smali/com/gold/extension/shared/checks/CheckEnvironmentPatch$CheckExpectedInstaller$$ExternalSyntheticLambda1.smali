.class public final synthetic Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller$$ExternalSyntheticLambda1;->f$0:Z

    invoke-static {p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;->$r8$lambda$TByPsGGhdzjjn_kN-YkpfdQrsw4(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
