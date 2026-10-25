.class Lorg/jsoup/internal/StringUtil$1;
.super Ljava/lang/ThreadLocal;
.source "StringUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/internal/StringUtil$1;->initialValue()Ljava/util/Stack;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Stack;
    .registers 2

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    return-object v0
.end method
