.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 13059
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearQualitySheetFooterViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;
    .registers 2

    .line 13105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->-$$Nest$mclearQualitySheetFooterViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;)V

    return-object p0
.end method

.method public getQualitySheetFooterViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel;
    .registers 1

    .line 13075
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->getQualitySheetFooterViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel;

    move-result-object p0

    return-object p0
.end method

.method public hasQualitySheetFooterViewModel()Z
    .registers 1

    .line 13068
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->hasQualitySheetFooterViewModel()Z

    move-result p0

    return p0
.end method

.method public mergeQualitySheetFooterViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;
    .registers 3

    .line 13098
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->-$$Nest$mmergeQualitySheetFooterViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel;)V

    return-object p0
.end method

.method public setQualitySheetFooterViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;
    .registers 3

    .line 13090
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13091
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->-$$Nest$msetQualitySheetFooterViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel;)V

    return-object p0
.end method

.method public setQualitySheetFooterViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter$Builder;
    .registers 3

    .line 13081
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13082
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;->-$$Nest$msetQualitySheetFooterViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualityFooter;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$QualitySheetFooterViewModel;)V

    return-object p0
.end method
