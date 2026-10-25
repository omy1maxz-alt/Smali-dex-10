.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 8865
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHeaderContent()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel$Builder;
    .registers 2

    .line 8911
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8912
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;->-$$Nest$mclearHeaderContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;)V

    return-object p0
.end method

.method public getHeaderContent()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;
    .registers 1

    .line 8881
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;->getHeaderContent()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;

    move-result-object p0

    return-object p0
.end method

.method public hasHeaderContent()Z
    .registers 1

    .line 8874
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;->hasHeaderContent()Z

    move-result p0

    return p0
.end method

.method public mergeHeaderContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel$Builder;
    .registers 3

    .line 8904
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8905
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;->-$$Nest$mmergeHeaderContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;)V

    return-object p0
.end method

.method public setHeaderContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel$Builder;
    .registers 3

    .line 8896
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8897
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;->-$$Nest$msetHeaderContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;)V

    return-object p0
.end method

.method public setHeaderContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel$Builder;
    .registers 3

    .line 8887
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8888
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;->-$$Nest$msetHeaderContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$BottomSheetHeaderModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;)V

    return-object p0
.end method
