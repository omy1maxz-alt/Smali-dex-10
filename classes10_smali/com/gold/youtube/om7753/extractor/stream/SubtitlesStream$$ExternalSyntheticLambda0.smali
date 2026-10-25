.class public final synthetic Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->lambda$new$0(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    move-result-object v0

    return-object v0
.end method
