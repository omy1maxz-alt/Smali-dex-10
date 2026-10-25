.class public final synthetic Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->$r8$lambda$eljqLb7h280QR6FsZd-QuSLQxnY(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
