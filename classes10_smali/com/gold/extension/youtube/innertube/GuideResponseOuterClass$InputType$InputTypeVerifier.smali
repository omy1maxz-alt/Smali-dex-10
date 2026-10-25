.class final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType$InputTypeVerifier;
.super Ljava/lang/Object;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputTypeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 382
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType$InputTypeVerifier;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType$InputTypeVerifier;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType$InputTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    .line 385
    invoke-static {p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
