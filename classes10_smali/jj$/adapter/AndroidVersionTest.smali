.class public Ljj$/adapter/AndroidVersionTest;
.super Ljava/lang/Object;
.source "AndroidVersionTest.java"


# static fields
.field public static final is24OrAbove:Z

.field public static final is26OrAbove:Z

.field public static final isHeadfull:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "java.util.StringJoiner"

    invoke-static {v0}, Ljj$/adapter/AndroidVersionTest;->setUp(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljj$/adapter/AndroidVersionTest;->is24OrAbove:Z

    const-string v0, "java.nio.file.FileSystems"

    invoke-static {v0}, Ljj$/adapter/AndroidVersionTest;->setUp(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljj$/adapter/AndroidVersionTest;->is26OrAbove:Z

    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljj$/adapter/AndroidVersionTest;->setUp(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljj$/adapter/AndroidVersionTest;->isHeadfull:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setUp(Ljava/lang/String;)Z
    .registers 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method
