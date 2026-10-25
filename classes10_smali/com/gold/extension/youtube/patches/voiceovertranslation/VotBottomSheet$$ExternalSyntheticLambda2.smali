.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda2;->f$1:[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda2;->f$1:[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    invoke-static {v0, p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->$r8$lambda$Ogm8hrjCJAU0FUDArEzsLzCJErw(Landroid/content/Context;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V

    return-void
.end method
