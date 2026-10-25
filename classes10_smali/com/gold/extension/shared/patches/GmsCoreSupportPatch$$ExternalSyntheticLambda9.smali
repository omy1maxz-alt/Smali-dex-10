.class public final synthetic Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda9;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda9;->f$0:Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->$r8$lambda$H9VUH4PM2Ho2ST7T-LtN0kGg7Ho(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
