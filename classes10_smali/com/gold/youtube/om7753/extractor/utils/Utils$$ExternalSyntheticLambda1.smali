.class public final synthetic Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->lambda$join$0(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
