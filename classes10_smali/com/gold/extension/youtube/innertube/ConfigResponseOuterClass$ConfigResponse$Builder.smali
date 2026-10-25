.class public final Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ConfigResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 181
    invoke-static {}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContext()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;
    .registers 2

    .line 227
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 228
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->-$$Nest$mclearContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;)V

    return-object p0
.end method

.method public getContext()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->getContext()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    move-result-object p0

    return-object p0
.end method

.method public hasContext()Z
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->hasContext()Z

    move-result p0

    return p0
.end method

.method public mergeContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;
    .registers 3

    .line 220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->-$$Nest$mmergeContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V

    return-object p0
.end method

.method public setContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;
    .registers 3

    .line 212
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->-$$Nest$msetContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V

    return-object p0
.end method

.method public setContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse$Builder;
    .registers 3

    .line 203
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 204
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;->-$$Nest$msetContext(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ConfigResponse;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V

    return-object p0
.end method
