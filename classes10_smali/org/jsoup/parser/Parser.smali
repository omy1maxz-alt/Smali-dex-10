.class public Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private errors:Lorg/jsoup/parser/ParseErrorList;

.field private settings:Lorg/jsoup/parser/ParseSettings;

.field private trackPosition:Z

.field private treeBuilder:Lorg/jsoup/parser/TreeBuilder;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/TreeBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->trackPosition:Z

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {p1}, Lorg/jsoup/parser/TreeBuilder;->defaultSettings()Lorg/jsoup/parser/ParseSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method public static htmlParser()Lorg/jsoup/parser/Parser;
    .registers 2

    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 4

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/jsoup/parser/Parser;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, v1, p1, p0}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static xmlParser()Lorg/jsoup/parser/Parser;
    .registers 2

    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method


# virtual methods
.method public getErrors()Lorg/jsoup/parser/ParseErrorList;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    return-object v0
.end method

.method public isTrackErrors()Z
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->getMaxSize()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTrackPosition()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Parser;->trackPosition:Z

    return v0
.end method

.method public parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 4

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0, p1, p2, p0}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method public parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .registers 5

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p0}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method public settings()Lorg/jsoup/parser/ParseSettings;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method public settings(Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Parser;
    .registers 2

    iput-object p1, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    return-object p0
.end method
