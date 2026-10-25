.class public final synthetic Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/NewExtractor$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->lambda$getService$1(I)Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    move-result-object v0

    return-object v0
.end method
