.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 18655
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLikeStatusEntityKey()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel$Builder;
    .registers 2

    .line 18692
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18693
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;->-$$Nest$mclearLikeStatusEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;)V

    return-object p0
.end method

.method public getLikeStatusEntityKey()Ljava/lang/String;
    .registers 1

    .line 18665
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;->getLikeStatusEntityKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLikeStatusEntityKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 18674
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;->getLikeStatusEntityKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setLikeStatusEntityKey(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel$Builder;
    .registers 3

    .line 18683
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18684
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;->-$$Nest$msetLikeStatusEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLikeStatusEntityKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel$Builder;
    .registers 3

    .line 18703
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18704
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;->-$$Nest$msetLikeStatusEntityKeyBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$LikeButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
