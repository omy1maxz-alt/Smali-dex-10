.class public final synthetic Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$2:Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;->f$2:Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;

    check-cast p1, Lcom/gold/youtube/om7753/extractor/Info;

    invoke-static {v0, v1, v2, p1}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->$r8$lambda$NMvNL4m4yrP-lyvKKI0uMCd0L6Y(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;Lcom/gold/youtube/om7753/extractor/Info;)V

    return-void
.end method
