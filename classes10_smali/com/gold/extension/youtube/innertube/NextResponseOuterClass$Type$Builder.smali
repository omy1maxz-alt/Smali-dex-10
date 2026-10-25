.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TypeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 7581
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;
    .registers 2

    .line 7627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7628
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->-$$Nest$mclearComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V

    return-object p0
.end method

.method public getComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
    .registers 1

    .line 7597
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->getComponentType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    move-result-object p0

    return-object p0
.end method

.method public hasComponentType()Z
    .registers 1

    .line 7590
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->hasComponentType()Z

    move-result p0

    return p0
.end method

.method public mergeComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;
    .registers 3

    .line 7620
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7621
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->-$$Nest$mmergeComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V

    return-object p0
.end method

.method public setComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;
    .registers 3

    .line 7612
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7613
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->-$$Nest$msetComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V

    return-object p0
.end method

.method public setComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;
    .registers 3

    .line 7603
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7604
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;->-$$Nest$msetComponentType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V

    return-object p0
.end method
