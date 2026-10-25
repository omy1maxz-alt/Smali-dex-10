.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 16800
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddToPlaylistEntityKey()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;
    .registers 2

    .line 16837
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->-$$Nest$mclearAddToPlaylistEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;)V

    return-object p0
.end method

.method public getAddToPlaylistEntityKey()Ljava/lang/String;
    .registers 1

    .line 16810
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->getAddToPlaylistEntityKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAddToPlaylistEntityKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 16819
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->getAddToPlaylistEntityKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setAddToPlaylistEntityKey(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;
    .registers 3

    .line 16828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->-$$Nest$msetAddToPlaylistEntityKey(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddToPlaylistEntityKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel$Builder;
    .registers 3

    .line 16848
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;->-$$Nest$msetAddToPlaylistEntityKeyBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$AddToPlaylistButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
