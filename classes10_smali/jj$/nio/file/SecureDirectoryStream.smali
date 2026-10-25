.class public interface abstract Ljj$/nio/file/SecureDirectoryStream;
.super Ljava/lang/Object;
.source "SecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# virtual methods
.method public abstract deleteDirectory(Ljava/lang/Object;)V
.end method

.method public abstract deleteFile(Ljava/lang/Object;)V
.end method

.method public abstract getFileAttributeView(Ljava/lang/Class;)Ljj$/nio/file/attribute/FileAttributeView;
.end method

.method public varargs abstract getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;
.end method

.method public abstract move(Ljava/lang/Object;Ljj$/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
.end method

.method public varargs abstract newByteChannel(Ljava/lang/Object;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
.end method

.method public varargs abstract newDirectoryStream(Ljava/lang/Object;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/SecureDirectoryStream;
.end method
