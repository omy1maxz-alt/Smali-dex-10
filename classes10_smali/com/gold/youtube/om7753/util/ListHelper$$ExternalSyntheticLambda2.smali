.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/MediaFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/MediaFormat;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda2;->f$0:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda2;->f$0:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    check-cast p1, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    check-cast p2, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-static {v0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$gMu_H7C0fyH24tDPwKx7fsmsblQ(Lcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/MediaFormat;)I

    move-result p1

    return p1
.end method
