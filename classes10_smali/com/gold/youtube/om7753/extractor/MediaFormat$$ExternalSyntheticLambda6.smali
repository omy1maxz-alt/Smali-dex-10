.class public final synthetic Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->lambda$getFromSuffix$4(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/MediaFormat;)Z

    move-result p1

    return p1
.end method
