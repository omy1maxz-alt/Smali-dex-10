.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3921
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVisibleItemCount()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer$Builder;
    .registers 2

    .line 3948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;->-$$Nest$mclearVisibleItemCount(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;)V

    return-object p0
.end method

.method public getVisibleItemCount()I
    .registers 1

    .line 3931
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;->getVisibleItemCount()I

    move-result p0

    return p0
.end method

.method public setVisibleItemCount(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer$Builder;
    .registers 3

    .line 3939
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;->-$$Nest$msetVisibleItemCount(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$HorizontalListRenderer;I)V

    return-object p0
.end method
