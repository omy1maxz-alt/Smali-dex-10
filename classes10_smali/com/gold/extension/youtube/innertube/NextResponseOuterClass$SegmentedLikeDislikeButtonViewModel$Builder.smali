.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 19195
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTeasersOrderEntityKey()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel$Builder;
    .registers 2

    .line 19232
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19233
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;->-$$Nest$mclearTeasersOrderEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;)V

    return-object p0
.end method

.method public getTeasersOrderEntityKey()Ljava/lang/String;
    .registers 1

    .line 19205
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;->getTeasersOrderEntityKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTeasersOrderEntityKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 19214
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;->getTeasersOrderEntityKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setTeasersOrderEntityKey(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel$Builder;
    .registers 3

    .line 19223
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19224
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;->-$$Nest$msetTeasersOrderEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTeasersOrderEntityKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel$Builder;
    .registers 3

    .line 19243
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19244
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;->-$$Nest$msetTeasersOrderEntityKeyBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SegmentedLikeDislikeButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
