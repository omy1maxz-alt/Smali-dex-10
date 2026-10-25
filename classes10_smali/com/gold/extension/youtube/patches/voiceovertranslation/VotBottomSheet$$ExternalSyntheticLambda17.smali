.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;->f$0:Z

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;->f$3:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;->f$0:Z

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;->f$2:Landroid/content/Context;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda17;->f$3:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->$r8$lambda$Oha74i9XDzeLCl6_AJhfbFwiaKQ(ZLjava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V

    return-void
.end method
