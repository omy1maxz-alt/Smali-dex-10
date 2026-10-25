.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6249
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNewElement()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;
    .registers 2

    .line 6295
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6296
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->-$$Nest$mclearNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V

    return-object p0
.end method

.method public getNewElement()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
    .registers 1

    .line 6265
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->getNewElement()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    move-result-object p0

    return-object p0
.end method

.method public hasNewElement()Z
    .registers 1

    .line 6258
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->hasNewElement()Z

    move-result p0

    return p0
.end method

.method public mergeNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;
    .registers 3

    .line 6288
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6289
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->-$$Nest$mmergeNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V

    return-object p0
.end method

.method public setNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;
    .registers 3

    .line 6280
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->-$$Nest$msetNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V

    return-object p0
.end method

.method public setNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;
    .registers 3

    .line 6271
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6272
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;->-$$Nest$msetNewElement(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V

    return-object p0
.end method
