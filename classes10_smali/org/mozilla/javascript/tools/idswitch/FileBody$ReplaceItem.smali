.class Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;
.super Ljava/lang/Object;
.source "FileBody.java"


# instance fields
.field begin:I

.field end:I

.field next:Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;

.field replacement:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->begin:I

    iput p2, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->end:I

    iput-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/FileBody$ReplaceItem;->replacement:Ljava/lang/String;

    return-void
.end method
