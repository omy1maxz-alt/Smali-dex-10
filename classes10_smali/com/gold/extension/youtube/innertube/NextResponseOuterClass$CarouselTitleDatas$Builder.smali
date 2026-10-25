.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatasOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatasOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 10364
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTitle()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;
    .registers 2

    .line 10401
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10402
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->-$$Nest$mclearTitle(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;)V

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 10374
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 10383
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;
    .registers 3

    .line 10392
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10393
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->-$$Nest$msetTitle(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas$Builder;
    .registers 3

    .line 10412
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;->-$$Nest$msetTitleBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CarouselTitleDatas;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
