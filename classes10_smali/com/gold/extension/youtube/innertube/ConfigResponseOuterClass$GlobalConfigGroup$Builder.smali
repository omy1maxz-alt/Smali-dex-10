.class public final Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ConfigResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroupOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 767
    invoke-static {}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRawColdConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;
    .registers 2

    .line 813
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 814
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->-$$Nest$mclearRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;)V

    return-object p0
.end method

.method public getRawColdConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;
    .registers 1

    .line 783
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->getRawColdConfigGroup()Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    move-result-object p0

    return-object p0
.end method

.method public hasRawColdConfigGroup()Z
    .registers 1

    .line 776
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->hasRawColdConfigGroup()Z

    move-result p0

    return p0
.end method

.method public mergeRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;
    .registers 3

    .line 806
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->-$$Nest$mmergeRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V

    return-object p0
.end method

.method public setRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup$Builder;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;
    .registers 3

    .line 798
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 799
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->-$$Nest$msetRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V

    return-object p0
.end method

.method public setRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup$Builder;
    .registers 3

    .line 789
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;->-$$Nest$msetRawColdConfigGroup(Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$GlobalConfigGroup;Lcom/gold/extension/youtube/innertube/ConfigResponseOuterClass$RawColdConfigGroup;)V

    return-object p0
.end method
