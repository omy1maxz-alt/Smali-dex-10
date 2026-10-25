.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1OrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 917
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMobileTopbarRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 2

    .line 1010
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1011
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$mclearMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)V

    return-object p0
.end method

.method public clearPivotBarRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 2

    .line 963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 964
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$mclearPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;)V

    return-object p0
.end method

.method public getMobileTopbarRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 1

    .line 980
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->getMobileTopbarRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getPivotBarRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;
    .registers 1

    .line 933
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->getPivotBarRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasMobileTopbarRenderer()Z
    .registers 1

    .line 973
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->hasMobileTopbarRenderer()Z

    move-result p0

    return p0
.end method

.method public hasPivotBarRenderer()Z
    .registers 1

    .line 926
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->hasPivotBarRenderer()Z

    move-result p0

    return p0
.end method

.method public mergeMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 3

    .line 1003
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1004
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$mmergeMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V

    return-object p0
.end method

.method public mergePivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 3

    .line 956
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 957
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$mmergePivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V

    return-object p0
.end method

.method public setMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 3

    .line 995
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 996
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$msetMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V

    return-object p0
.end method

.method public setMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 3

    .line 986
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 987
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$msetMobileTopbarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V

    return-object p0
.end method

.method public setPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 3

    .line 948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$msetPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V

    return-object p0
.end method

.method public setPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1$Builder;
    .registers 3

    .line 939
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 940
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;->-$$Nest$msetPivotBarRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Items1;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarRenderer;)V

    return-object p0
.end method
