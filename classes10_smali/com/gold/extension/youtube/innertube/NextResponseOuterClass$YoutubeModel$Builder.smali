.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 10841
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;
    .registers 2

    .line 10887
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10888
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;->-$$Nest$mclearViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;)V

    return-object p0
.end method

.method public getViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;
    .registers 1

    .line 10857
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;->getViewModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public hasViewModel()Z
    .registers 1

    .line 10850
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;->hasViewModel()Z

    move-result p0

    return p0
.end method

.method public mergeViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;
    .registers 3

    .line 10880
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10881
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;->-$$Nest$mmergeViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)V

    return-object p0
.end method

.method public setViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;
    .registers 3

    .line 10872
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10873
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;->-$$Nest$msetViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)V

    return-object p0
.end method

.method public setViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel$Builder;
    .registers 3

    .line 10863
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10864
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;->-$$Nest$msetViewModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$YoutubeModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ViewModel;)V

    return-object p0
.end method
