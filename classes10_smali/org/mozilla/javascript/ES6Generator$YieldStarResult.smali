.class public final Lorg/mozilla/javascript/ES6Generator$YieldStarResult;
.super Ljava/lang/Object;
.source "ES6Generator.java"


# instance fields
.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;->result:Ljava/lang/Object;

    return-object v0
.end method
