.class Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$1;
.super Ljava/lang/Object;
.source "LoopVideoButton.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->addAutoColonWatcher(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isFormatting:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$1;->isFormatting:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    .line 369
    iget-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$1;->isFormatting:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$1;->isFormatting:Z

    const/4 v0, 0x0

    .line 372
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_23

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_38

    .line 374
    :cond_23
    :goto_23
    invoke-static {v1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->-$$Nest$smformatDigitsAsTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v0, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 376
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_21

    .line 378
    iput-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$1;->isFormatting:Z

    return-void

    :goto_38
    iput-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$1;->isFormatting:Z

    .line 379
    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method
