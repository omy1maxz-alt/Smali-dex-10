.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PropertiesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6944
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdentifierProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;
    .registers 2

    .line 6990
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6991
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->-$$Nest$mclearIdentifierProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;)V

    return-object p0
.end method

.method public getIdentifierProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;
    .registers 1

    .line 6960
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->getIdentifierProperties()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;

    move-result-object p0

    return-object p0
.end method

.method public hasIdentifierProperties()Z
    .registers 1

    .line 6953
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->hasIdentifierProperties()Z

    move-result p0

    return p0
.end method

.method public mergeIdentifierProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;
    .registers 3

    .line 6983
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6984
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->-$$Nest$mmergeIdentifierProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;)V

    return-object p0
.end method

.method public setIdentifierProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;
    .registers 3

    .line 6975
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6976
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->-$$Nest$msetIdentifierProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;)V

    return-object p0
.end method

.method public setIdentifierProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties$Builder;
    .registers 3

    .line 6966
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6967
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;->-$$Nest$msetIdentifierProperties(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Properties;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$IdentifierProperties;)V

    return-object p0
.end method
