.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 17791
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnableCompactChannelBarInnerRefactor()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel$Builder;
    .registers 2

    .line 17818
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;->-$$Nest$mclearEnableCompactChannelBarInnerRefactor(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;)V

    return-object p0
.end method

.method public getEnableCompactChannelBarInnerRefactor()Z
    .registers 1

    .line 17801
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;->getEnableCompactChannelBarInnerRefactor()Z

    move-result p0

    return p0
.end method

.method public setEnableCompactChannelBarInnerRefactor(Z)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel$Builder;
    .registers 3

    .line 17809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;->-$$Nest$msetEnableCompactChannelBarInnerRefactor(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CompactChannelBarViewModel;Z)V

    return-object p0
.end method
