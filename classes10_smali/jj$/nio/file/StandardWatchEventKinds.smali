.class public final Ljj$/nio/file/StandardWatchEventKinds;
.super Ljava/lang/Object;
.source "StandardWatchEventKinds.java"


# static fields
.field public static final ENTRY_CREATE:Ljj$/nio/file/WatchEvent$Kind;

.field public static final ENTRY_DELETE:Ljj$/nio/file/WatchEvent$Kind;

.field public static final ENTRY_MODIFY:Ljj$/nio/file/WatchEvent$Kind;

.field public static final OVERFLOW:Ljj$/nio/file/WatchEvent$Kind;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-string v1, "OVERFLOW"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljj$/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljj$/nio/file/WatchEvent$Kind;

    new-instance v0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-string v1, "ENTRY_CREATE"

    const-class v2, Ljj$/nio/file/Path;

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljj$/nio/file/WatchEvent$Kind;

    new-instance v0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-string v1, "ENTRY_DELETE"

    const-class v2, Ljj$/nio/file/Path;

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljj$/nio/file/WatchEvent$Kind;

    new-instance v0, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;

    const-string v1, "ENTRY_MODIFY"

    const-class v2, Ljj$/nio/file/Path;

    invoke-direct {v0, v1, v2}, Ljj$/nio/file/StandardWatchEventKinds$StdWatchEventKind;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljj$/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljj$/nio/file/WatchEvent$Kind;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
