.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2OrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4050
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 2

    .line 4060
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4061
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method

.method public clearPivotBarIconOnlyItemRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 2

    .line 4109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4110
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$mclearPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method

.method public clearPivotBarItemRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 2

    .line 4157
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4158
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$mclearPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;)V

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$DataCase;
    .registers 1

    .line 4056
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getPivotBarIconOnlyItemRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
    .registers 1

    .line 4078
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->getPivotBarIconOnlyItemRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getPivotBarItemRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
    .registers 1

    .line 4126
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->getPivotBarItemRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasPivotBarIconOnlyItemRenderer()Z
    .registers 1

    .line 4071
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->hasPivotBarIconOnlyItemRenderer()Z

    move-result p0

    return p0
.end method

.method public hasPivotBarItemRenderer()Z
    .registers 1

    .line 4119
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->hasPivotBarItemRenderer()Z

    move-result p0

    return p0
.end method

.method public mergePivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 3

    .line 4101
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$mmergePivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-object p0
.end method

.method public mergePivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 3

    .line 4149
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4150
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$mmergePivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public setPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 3

    .line 4093
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4094
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$msetPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-object p0
.end method

.method public setPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 3

    .line 4084
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4085
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$msetPivotBarIconOnlyItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-object p0
.end method

.method public setPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 3

    .line 4141
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4142
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$msetPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public setPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2$Builder;
    .registers 3

    .line 4132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4133
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;->-$$Nest$msetPivotBarItemRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items2;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method
