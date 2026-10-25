.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6049
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPivotBarItemStyle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle$Builder;
    .registers 2

    .line 6076
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6077
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;->-$$Nest$mclearPivotBarItemStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V

    return-object p0
.end method

.method public getPivotBarItemStyle()I
    .registers 1

    .line 6059
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;->getPivotBarItemStyle()I

    move-result p0

    return p0
.end method

.method public setPivotBarItemStyle(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle$Builder;
    .registers 3

    .line 6067
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6068
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;->-$$Nest$msetPivotBarItemStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;I)V

    return-object p0
.end method
