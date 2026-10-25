.class public final Lorg/jsoup/select/Evaluator$IsLastOfType;
.super Lorg/jsoup/select/Evaluator$IsNthLastOfType;
.source "Evaluator.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jsoup/select/Evaluator$IsNthLastOfType;-><init>(II)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":last-of-type"

    return-object v0
.end method
