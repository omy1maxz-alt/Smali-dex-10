.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;->f$2:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet$$ExternalSyntheticLambda13;->f$2:Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotBottomSheet;->$r8$lambda$oOHH0FpkMsdsDuAOF0Fkl-d4lAw([Ljava/lang/String;Landroid/content/Context;Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
