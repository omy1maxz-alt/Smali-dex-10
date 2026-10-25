.class public final Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IconOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/IconOuterClass$IconOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;",
        "Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/IconOuterClass$IconOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 11847
    invoke-static {}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/IconOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearYtIconType()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;
    .registers 2

    .line 11893
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11894
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->-$$Nest$mclearYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public getYtIconType()Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;
    .registers 1

    .line 11876
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getYtIconType()Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    move-result-object p0

    return-object p0
.end method

.method public getYtIconTypeValue()I
    .registers 1

    .line 11857
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->getYtIconTypeValue()I

    move-result p0

    return p0
.end method

.method public setYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;
    .registers 3

    .line 11884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->-$$Nest$msetYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;)V

    return-object p0
.end method

.method public setYtIconTypeValue(I)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;
    .registers 3

    .line 11866
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11867
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->-$$Nest$msetYtIconTypeValue(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;I)V

    return-object p0
.end method
