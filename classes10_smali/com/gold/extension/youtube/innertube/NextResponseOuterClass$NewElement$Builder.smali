.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElementOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6602
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 2

    .line 6695
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6696
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$mclearProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V

    return-object p0
.end method

.method public clearType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 2

    .line 6648
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6649
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$mclearType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;)V

    return-object p0
.end method

.method public getProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;
    .registers 1

    .line 6665
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->getProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;
    .registers 1

    .line 6618
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->getType()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    move-result-object p0

    return-object p0
.end method

.method public hasProperties()Z
    .registers 1

    .line 6658
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->hasProperties()Z

    move-result p0

    return p0
.end method

.method public hasType()Z
    .registers 1

    .line 6611
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->hasType()Z

    move-result p0

    return p0
.end method

.method public mergeProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 3

    .line 6688
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6689
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$mmergeProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V

    return-object p0
.end method

.method public mergeType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 3

    .line 6641
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6642
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$mmergeType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V

    return-object p0
.end method

.method public setProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 3

    .line 6680
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6681
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$msetProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V

    return-object p0
.end method

.method public setProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 3

    .line 6671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6672
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$msetProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V

    return-object p0
.end method

.method public setType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 3

    .line 6633
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6634
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$msetType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V

    return-object p0
.end method

.method public setType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement$Builder;
    .registers 3

    .line 6624
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6625
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;->-$$Nest$msetType(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$NewElement;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Type;)V

    return-object p0
.end method
