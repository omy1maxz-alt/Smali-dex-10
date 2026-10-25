.class public final synthetic Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda0;->f$0:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda0;->f$0:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->$r8$lambda$rX1RQlZR0PAW668k3JPsSzk6uHo(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
