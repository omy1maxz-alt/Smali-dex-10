.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContentsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContentsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4194
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearElementRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;
    .registers 2

    .line 4240
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4241
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->-$$Nest$mclearElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public getElementRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;
    .registers 1

    .line 4210
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->getElementRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasElementRenderer()Z
    .registers 1

    .line 4203
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->hasElementRenderer()Z

    move-result p0

    return p0
.end method

.method public mergeElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;
    .registers 3

    .line 4233
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4234
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->-$$Nest$mmergeElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V

    return-object p0
.end method

.method public setElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;
    .registers 3

    .line 4225
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4226
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->-$$Nest$msetElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V

    return-object p0
.end method

.method public setElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;
    .registers 3

    .line 4216
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4217
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;->-$$Nest$msetElementRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ElementRenderer;)V

    return-object p0
.end method
