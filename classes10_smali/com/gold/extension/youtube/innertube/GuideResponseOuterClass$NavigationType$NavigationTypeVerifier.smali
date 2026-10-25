.class final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType$NavigationTypeVerifier;
.super Ljava/lang/Object;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationTypeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType$NavigationTypeVerifier;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType$NavigationTypeVerifier;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType$NavigationTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 108
    invoke-static {p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
