.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ContentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3655
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHorizontalListRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;
    .registers 2

    .line 3701
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3702
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->-$$Nest$mclearHorizontalListRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;)V

    return-object p0
.end method

.method public getHorizontalListRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;
    .registers 1

    .line 3671
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->getHorizontalListRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasHorizontalListRenderer()Z
    .registers 1

    .line 3664
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->hasHorizontalListRenderer()Z

    move-result p0

    return p0
.end method

.method public mergeHorizontalListRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;
    .registers 3

    .line 3694
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3695
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->-$$Nest$mmergeHorizontalListRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;)V

    return-object p0
.end method

.method public setHorizontalListRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;
    .registers 3

    .line 3686
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3687
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->-$$Nest$msetHorizontalListRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;)V

    return-object p0
.end method

.method public setHorizontalListRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content$Builder;
    .registers 3

    .line 3677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;->-$$Nest$msetHorizontalListRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Content;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;)V

    return-object p0
.end method
