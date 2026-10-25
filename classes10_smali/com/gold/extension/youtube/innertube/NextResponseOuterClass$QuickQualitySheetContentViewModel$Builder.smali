.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 12505
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnablePlayerAdapter()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 2

    .line 12626
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12627
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$mclearEnablePlayerAdapter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V

    return-object p0
.end method

.method public clearQualityFooter()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 2

    .line 12598
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12599
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$mclearQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V

    return-object p0
.end method

.method public clearQualityHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 2

    .line 12551
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12552
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$mclearQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;)V

    return-object p0
.end method

.method public getEnablePlayerAdapter()Z
    .registers 1

    .line 12609
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->getEnablePlayerAdapter()Z

    move-result p0

    return p0
.end method

.method public getQualityFooter()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;
    .registers 1

    .line 12568
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->getQualityFooter()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    move-result-object p0

    return-object p0
.end method

.method public getQualityHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;
    .registers 1

    .line 12521
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->getQualityHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    move-result-object p0

    return-object p0
.end method

.method public hasQualityFooter()Z
    .registers 1

    .line 12561
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->hasQualityFooter()Z

    move-result p0

    return p0
.end method

.method public hasQualityHeader()Z
    .registers 1

    .line 12514
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->hasQualityHeader()Z

    move-result p0

    return p0
.end method

.method public mergeQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 3

    .line 12591
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$mmergeQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V

    return-object p0
.end method

.method public mergeQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 3

    .line 12544
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12545
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$mmergeQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V

    return-object p0
.end method

.method public setEnablePlayerAdapter(Z)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 3

    .line 12617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$msetEnablePlayerAdapter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Z)V

    return-object p0
.end method

.method public setQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 3

    .line 12583
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12584
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$msetQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V

    return-object p0
.end method

.method public setQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 3

    .line 12574
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12575
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$msetQualityFooter(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V

    return-object p0
.end method

.method public setQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 3

    .line 12536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$msetQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V

    return-object p0
.end method

.method public setQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel$Builder;
    .registers 3

    .line 12527
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;->-$$Nest$msetQualityHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QuickQualitySheetContentViewModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityHeader;)V

    return-object p0
.end method
