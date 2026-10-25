.class Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType$1;
.super Ljava/lang/Object;
.source "IconOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;
    .registers 2

    .line 11658
    invoke-static {p1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;->forNumber(I)Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11655
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType$1;->findValueByNumber(I)Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    move-result-object p0

    return-object p0
.end method
