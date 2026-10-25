.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 11376
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCaptionsSheetContentViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 2

    .line 11579
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11580
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mclearCaptionsSheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)V

    return-object p0
.end method

.method public clearCompactifyVideoActionBarViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 2

    .line 11435
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11436
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mclearCompactifyVideoActionBarViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)V

    return-object p0
.end method

.method public clearData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 2

    .line 11386
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11387
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)V

    return-object p0
.end method

.method public clearQualitySheetHeaderViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 2

    .line 11483
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11484
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mclearQualitySheetHeaderViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)V

    return-object p0
.end method

.method public clearQuickQualitySheetContentViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 2

    .line 11531
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11532
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mclearQuickQualitySheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)V

    return-object p0
.end method

.method public getCaptionsSheetContentViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;
    .registers 1

    .line 11548
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->getCaptionsSheetContentViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    move-result-object p0

    return-object p0
.end method

.method public getCompactifyVideoActionBarViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;
    .registers 1

    .line 11404
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->getCompactifyVideoActionBarViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    move-result-object p0

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$DataCase;
    .registers 1

    .line 11382
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->getDataCase()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getQualitySheetHeaderViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel;
    .registers 1

    .line 11452
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->getQualitySheetHeaderViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel;

    move-result-object p0

    return-object p0
.end method

.method public getQuickQualitySheetContentViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
    .registers 1

    .line 11500
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->getQuickQualitySheetContentViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    move-result-object p0

    return-object p0
.end method

.method public hasCaptionsSheetContentViewModel()Z
    .registers 1

    .line 11541
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->hasCaptionsSheetContentViewModel()Z

    move-result p0

    return p0
.end method

.method public hasCompactifyVideoActionBarViewModel()Z
    .registers 1

    .line 11397
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->hasCompactifyVideoActionBarViewModel()Z

    move-result p0

    return p0
.end method

.method public hasQualitySheetHeaderViewModel()Z
    .registers 1

    .line 11445
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->hasQualitySheetHeaderViewModel()Z

    move-result p0

    return p0
.end method

.method public hasQuickQualitySheetContentViewModel()Z
    .registers 1

    .line 11493
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->hasQuickQualitySheetContentViewModel()Z

    move-result p0

    return p0
.end method

.method public mergeCaptionsSheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11571
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11572
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mmergeCaptionsSheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V

    return-object p0
.end method

.method public mergeCompactifyVideoActionBarViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11427
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11428
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mmergeCompactifyVideoActionBarViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;)V

    return-object p0
.end method

.method public mergeQualitySheetHeaderViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mmergeQualitySheetHeaderViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel;)V

    return-object p0
.end method

.method public mergeQuickQualitySheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11523
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11524
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$mmergeQuickQualitySheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V

    return-object p0
.end method

.method public setCaptionsSheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11563
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11564
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$msetCaptionsSheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V

    return-object p0
.end method

.method public setCaptionsSheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11554
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11555
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$msetCaptionsSheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CaptionsSheetContentViewModel;)V

    return-object p0
.end method

.method public setCompactifyVideoActionBarViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11419
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$msetCompactifyVideoActionBarViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;)V

    return-object p0
.end method

.method public setCompactifyVideoActionBarViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11410
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11411
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$msetCompactifyVideoActionBarViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactifyVideoActionBarViewModel;)V

    return-object p0
.end method

.method public setQualitySheetHeaderViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11467
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11468
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$msetQualitySheetHeaderViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel;)V

    return-object p0
.end method

.method public setQualitySheetHeaderViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11458
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11459
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$msetQualitySheetHeaderViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetHeaderViewModel;)V

    return-object p0
.end method

.method public setQuickQualitySheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11515
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11516
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$msetQuickQualitySheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V

    return-object p0
.end method

.method public setQuickQualitySheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;
    .registers 3

    .line 11506
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11507
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;->-$$Nest$msetQuickQualitySheetContentViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V

    return-object p0
.end method
