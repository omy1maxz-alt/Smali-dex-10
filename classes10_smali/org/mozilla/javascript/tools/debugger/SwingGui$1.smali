.class Lorg/mozilla/javascript/tools/debugger/SwingGui$1;
.super Ljavax/swing/filechooser/FileFilter;
.source "SwingGui.java"


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/SwingGui;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui$1;->this$0:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-direct {p0}, Ljavax/swing/filechooser/FileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_2d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2d

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    return v1

    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "JavaScript Files (*.js)"

    return-object v0
.end method
