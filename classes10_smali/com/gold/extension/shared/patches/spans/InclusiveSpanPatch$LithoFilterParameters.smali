.class final Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;
.super Ljava/lang/Object;
.source "InclusiveSpanPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LithoFilterParameters"
.end annotation


# instance fields
.field final conversionContext:Ljava/lang/String;

.field final end:I

.field final flags:I

.field final isWord:Z

.field final originalLength:I

.field final originalString:Ljava/lang/String;

.field final span:Ljava/lang/Object;

.field final spanType:Lcom/gold/extension/shared/patches/spans/SpanType;

.field final spannableString:Landroid/text/SpannableString;

.field final start:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/text/SpannableString;Ljava/lang/Object;III)V
    .registers 7

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->conversionContext:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->spannableString:Landroid/text/SpannableString;

    .line 56
    iput-object p3, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->span:Ljava/lang/Object;

    .line 57
    iput p4, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->start:I

    .line 58
    iput p5, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->end:I

    .line 59
    iput p6, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->flags:I

    .line 60
    invoke-virtual {p2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->originalString:Ljava/lang/String;

    .line 61
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->originalLength:I

    .line 62
    invoke-static {p3}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->-$$Nest$smgetSpanType(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/spans/SpanType;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->spanType:Lcom/gold/extension/shared/patches/spans/SpanType;

    if-nez p4, :cond_28

    if-eq p5, p1, :cond_26

    goto :goto_28

    :cond_26
    const/4 p1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p1, 0x1

    .line 63
    :goto_29
    iput-boolean p1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->isWord:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharSequence:\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->originalString:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\nSpanType:\'"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->spanType:Lcom/gold/extension/shared/patches/spans/SpanType;

    iget-object v2, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->span:Ljava/lang/Object;

    .line 73
    invoke-static {v1, v2}, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch;->-$$Nest$smgetSpanType(Lcom/gold/extension/shared/patches/spans/SpanType;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\nLength:\'"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->originalLength:I

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'\nStart:\'"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->start:I

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'\nEnd:\'"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->end:I

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\'\nisWord:\'"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->isWord:Z

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-boolean v2, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->isWord:Z

    if-eqz v2, :cond_62

    .line 84
    const-string v2, "\nWord:\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->originalString:Ljava/lang/String;

    iget v3, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->start:I

    iget p0, p0, Lcom/gold/extension/shared/patches/spans/InclusiveSpanPatch$LithoFilterParameters;->end:I

    .line 85
    invoke-virtual {v2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
