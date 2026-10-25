.class public interface abstract Lokhttp4/internal/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final SYSTEM:Lokhttp4/internal/io/FileSystem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp4/internal/io/FileSystem$1;

    invoke-direct {v0}, Lokhttp4/internal/io/FileSystem$1;-><init>()V

    sput-object v0, Lokhttp4/internal/io/FileSystem;->SYSTEM:Lokhttp4/internal/io/FileSystem;

    return-void
.end method


# virtual methods
.method public abstract appendingSink(Ljava/io/File;)Lokin/Sink;
.end method

.method public abstract delete(Ljava/io/File;)V
.end method

.method public abstract deleteContents(Ljava/io/File;)V
.end method

.method public abstract exists(Ljava/io/File;)Z
.end method

.method public abstract rename(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract sink(Ljava/io/File;)Lokin/Sink;
.end method

.method public abstract size(Ljava/io/File;)J
.end method

.method public abstract source(Ljava/io/File;)Lokin/Source;
.end method
