.class public final Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ConfigResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$ContextOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 474
    invoke-static {}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGlobalConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;
    .registers 2

    .line 520
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->-$$Nest$mclearGlobalConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;)V

    return-object p0
.end method

.method public getGlobalConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
    .registers 1

    .line 490
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->getGlobalConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    move-result-object p0

    return-object p0
.end method

.method public hasGlobalConfigGroup()Z
    .registers 1

    .line 483
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->hasGlobalConfigGroup()Z

    move-result p0

    return p0
.end method

.method public mergeGlobalConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;
    .registers 3

    .line 513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->-$$Nest$mmergeGlobalConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;)V

    return-object p0
.end method

.method public setGlobalConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;
    .registers 3

    .line 505
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->-$$Nest$msetGlobalConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;)V

    return-object p0
.end method

.method public setGlobalConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context$Builder;
    .registers 3

    .line 496
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 497
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;->-$$Nest$msetGlobalConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$Context;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;)V

    return-object p0
.end method
