.class Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;
.super Ljava/lang/ref/SoftReference;
.source "Main.java"


# instance fields
.field digest:[B

.field path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[BLorg/mozilla/javascript/Script;Ljava/lang/ref/ReferenceQueue;)V
    .registers 5

    invoke-direct {p0, p3, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;->path:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;->digest:[B

    return-void
.end method
