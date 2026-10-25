.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 18065
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDislikeEntityKey()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel$Builder;
    .registers 2

    .line 18102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;->-$$Nest$mclearDislikeEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;)V

    return-object p0
.end method

.method public getDislikeEntityKey()Ljava/lang/String;
    .registers 1

    .line 18075
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;->getDislikeEntityKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDislikeEntityKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 18084
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;->getDislikeEntityKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setDislikeEntityKey(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel$Builder;
    .registers 3

    .line 18093
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18094
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;->-$$Nest$msetDislikeEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDislikeEntityKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel$Builder;
    .registers 3

    .line 18113
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;->-$$Nest$msetDislikeEntityKeyBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DislikeButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
