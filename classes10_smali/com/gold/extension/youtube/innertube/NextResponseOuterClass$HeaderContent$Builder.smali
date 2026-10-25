.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 9159
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTitleText()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent$Builder;
    .registers 2

    .line 9196
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9197
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;->-$$Nest$mclearTitleText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;)V

    return-object p0
.end method

.method public getTitleText()Ljava/lang/String;
    .registers 1

    .line 9169
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;->getTitleText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleTextBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9178
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;->getTitleTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent$Builder;
    .registers 3

    .line 9187
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9188
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;->-$$Nest$msetTitleText(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitleTextBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent$Builder;
    .registers 3

    .line 9207
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;->-$$Nest$msetTitleTextBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HeaderContent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
