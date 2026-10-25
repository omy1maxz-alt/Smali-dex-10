.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$4:[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda12;->f$4:[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->$r8$lambda$G1YY-ulwlnbBDM7aYY51rKfjuvM(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/view/View;)V

    return-void
.end method
