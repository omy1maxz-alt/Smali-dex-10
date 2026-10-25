.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 8410
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBottomSheetHeaderModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 2

    .line 8469
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8470
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mclearBottomSheetHeaderModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-object p0
.end method

.method public clearData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 2

    .line 8420
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-object p0
.end method

.method public clearVideoActionBarModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 2

    .line 8517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8518
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mclearVideoActionBarModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-object p0
.end method

.method public clearVideoMetadataCarouselModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 2

    .line 8565
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8566
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mclearVideoMetadataCarouselModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-object p0
.end method

.method public clearYoutubeModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 2

    .line 8613
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8614
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mclearYoutubeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-object p0
.end method

.method public getBottomSheetHeaderModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;
    .registers 1

    .line 8438
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getBottomSheetHeaderModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    move-result-object p0

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$DataCase;
    .registers 1

    .line 8416
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getDataCase()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getVideoActionBarModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;
    .registers 1

    .line 8486
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getVideoActionBarModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    move-result-object p0

    return-object p0
.end method

.method public getVideoMetadataCarouselModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;
    .registers 1

    .line 8534
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getVideoMetadataCarouselModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    move-result-object p0

    return-object p0
.end method

.method public getYoutubeModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;
    .registers 1

    .line 8582
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->getYoutubeModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    move-result-object p0

    return-object p0
.end method

.method public hasBottomSheetHeaderModel()Z
    .registers 1

    .line 8431
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->hasBottomSheetHeaderModel()Z

    move-result p0

    return p0
.end method

.method public hasVideoActionBarModel()Z
    .registers 1

    .line 8479
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->hasVideoActionBarModel()Z

    move-result p0

    return p0
.end method

.method public hasVideoMetadataCarouselModel()Z
    .registers 1

    .line 8527
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->hasVideoMetadataCarouselModel()Z

    move-result p0

    return p0
.end method

.method public hasYoutubeModel()Z
    .registers 1

    .line 8575
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->hasYoutubeModel()Z

    move-result p0

    return p0
.end method

.method public mergeBottomSheetHeaderModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8461
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8462
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mmergeBottomSheetHeaderModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;)V

    return-object p0
.end method

.method public mergeVideoActionBarModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8509
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mmergeVideoActionBarModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;)V

    return-object p0
.end method

.method public mergeVideoMetadataCarouselModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8557
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8558
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mmergeVideoMetadataCarouselModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;)V

    return-object p0
.end method

.method public mergeYoutubeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8605
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8606
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$mmergeYoutubeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;)V

    return-object p0
.end method

.method public setBottomSheetHeaderModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8453
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8454
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$msetBottomSheetHeaderModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;)V

    return-object p0
.end method

.method public setBottomSheetHeaderModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8444
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8445
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$msetBottomSheetHeaderModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;)V

    return-object p0
.end method

.method public setVideoActionBarModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8501
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8502
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$msetVideoActionBarModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;)V

    return-object p0
.end method

.method public setVideoActionBarModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$msetVideoActionBarModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;)V

    return-object p0
.end method

.method public setVideoMetadataCarouselModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8549
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$msetVideoMetadataCarouselModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;)V

    return-object p0
.end method

.method public setVideoMetadataCarouselModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8541
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$msetVideoMetadataCarouselModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;)V

    return-object p0
.end method

.method public setYoutubeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8597
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8598
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$msetYoutubeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;)V

    return-object p0
.end method

.method public setYoutubeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;
    .registers 3

    .line 8588
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8589
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;->-$$Nest$msetYoutubeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;)V

    return-object p0
.end method
