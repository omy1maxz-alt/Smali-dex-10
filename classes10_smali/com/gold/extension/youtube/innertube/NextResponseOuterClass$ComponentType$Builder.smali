.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentTypeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 7875
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;
    .registers 2

    .line 7921
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7922
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->-$$Nest$mclearModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;)V

    return-object p0
.end method

.method public getModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;
    .registers 1

    .line 7891
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->getModel()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    move-result-object p0

    return-object p0
.end method

.method public hasModel()Z
    .registers 1

    .line 7884
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->hasModel()Z

    move-result p0

    return p0
.end method

.method public mergeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;
    .registers 3

    .line 7914
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->-$$Nest$mmergeModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-object p0
.end method

.method public setModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;
    .registers 3

    .line 7906
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7907
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->-$$Nest$msetModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-object p0
.end method

.method public setModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType$Builder;
    .registers 3

    .line 7897
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7898
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;->-$$Nest$msetModel(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ComponentType;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Model;)V

    return-object p0
.end method
