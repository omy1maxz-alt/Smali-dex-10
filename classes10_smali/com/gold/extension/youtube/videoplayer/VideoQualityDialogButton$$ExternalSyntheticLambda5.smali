.class public final synthetic Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/text/SpannableStringBuilder;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda5;->f$0:Landroid/text/SpannableStringBuilder;

    iput-object p2, p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda5;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda5;->f$0:Landroid/text/SpannableStringBuilder;

    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton$$ExternalSyntheticLambda5;->f$1:Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/videoplayer/VideoQualityDialogButton;->$r8$lambda$s1Tfaehy5MVSLMhiFZb05pMU4dw(Landroid/text/SpannableStringBuilder;Landroid/widget/TextView;)V

    return-void
.end method
