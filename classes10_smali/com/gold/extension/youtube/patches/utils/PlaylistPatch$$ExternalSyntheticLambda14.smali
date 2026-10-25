.class public final synthetic Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

.field public final synthetic f$1:Ljava/util/function/Function;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Ljava/util/function/Function;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;->f$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;->f$1:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;->f$0:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;->f$1:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$$ExternalSyntheticLambda14;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0, p1}, Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->$r8$lambda$Lyd0Emwt-OvXNub3WxiS_6NJvRE(Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Ljava/util/function/Function;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
