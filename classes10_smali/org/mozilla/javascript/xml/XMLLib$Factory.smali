.class public abstract Lorg/mozilla/javascript/xml/XMLLib$Factory;
.super Ljava/lang/Object;
.source "XMLLib.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/mozilla/javascript/xml/XMLLib$Factory;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/xml/XMLLib$Factory$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/xml/XMLLib$Factory$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getImplementationClassName()Ljava/lang/String;
.end method
