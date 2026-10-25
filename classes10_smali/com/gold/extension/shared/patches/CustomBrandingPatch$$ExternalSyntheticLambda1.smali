.class public final synthetic Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda1;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda1;->f$0:Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->$r8$lambda$tzCINJik-6R_e_Ap_nT8Tddh_Ak(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
