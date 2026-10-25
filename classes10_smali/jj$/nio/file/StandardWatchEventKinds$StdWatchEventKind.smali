.class Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;
.super Ljava/lang/Object;
.source "StandardWatchEventKinds.java"

# interfaces
.implements Ljj$/nio/file/WatchEvent$Kind;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;->name:Ljava/lang/String;

    iput-object p2, p0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;->type:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;->name:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;->type:Ljava/lang/Class;

    return-object v0
.end method
