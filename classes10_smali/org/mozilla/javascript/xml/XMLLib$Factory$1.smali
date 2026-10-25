.class final Lorg/mozilla/javascript/xml/XMLLib$Factory$1;
.super Lorg/mozilla/javascript/xml/XMLLib$Factory;
.source "XMLLib.java"


# instance fields
.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/xml/XMLLib$Factory$1;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Lorg/mozilla/javascript/xml/XMLLib$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public getImplementationClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xml/XMLLib$Factory$1;->val$className:Ljava/lang/String;

    return-object v0
.end method
