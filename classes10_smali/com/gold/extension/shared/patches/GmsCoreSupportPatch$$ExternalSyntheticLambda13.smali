.class public final synthetic Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;->f$3:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;->f$3:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, p0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->$r8$lambda$B8Svc7ffQDYzyC1XG4zKxIMKxlE(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
