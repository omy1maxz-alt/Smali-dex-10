.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 14135
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVideoActionBarData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel$Builder;
    .registers 2

    .line 14181
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14182
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;->-$$Nest$mclearVideoActionBarData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;)V

    return-object p0
.end method

.method public getVideoActionBarData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;
    .registers 1

    .line 14151
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;->getVideoActionBarData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    move-result-object p0

    return-object p0
.end method

.method public hasVideoActionBarData()Z
    .registers 1

    .line 14144
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;->hasVideoActionBarData()Z

    move-result p0

    return p0
.end method

.method public mergeVideoActionBarData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel$Builder;
    .registers 3

    .line 14174
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14175
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;->-$$Nest$mmergeVideoActionBarData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;)V

    return-object p0
.end method

.method public setVideoActionBarData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel$Builder;
    .registers 3

    .line 14166
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14167
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;->-$$Nest$msetVideoActionBarData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;)V

    return-object p0
.end method

.method public setVideoActionBarData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel$Builder;
    .registers 3

    .line 14157
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;->-$$Nest$msetVideoActionBarData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoActionBarData;)V

    return-object p0
.end method
