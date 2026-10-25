.class final Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;
.super Ljava/lang/Object;
.source "YoutubeThrottlingParameterUtils.java"


# static fields
.field private static final ARRAY_ACCESS_REGEX:Ljava/lang/String; = "\\[(\\d+)]"

.field private static final DEOBFUSCATION_FUNCTION_ARRAY_OBJECT_TYPE_DECLARATION_REGEX:Ljava/lang/String; = "var "

.field private static final DEOBFUSCATION_FUNCTION_BODY_REGEX:Ljava/lang/String; = "=\\s*function([\\S\\s]*?\\}\\s*return [\\w$]+?\\.join\\(\"\"\\)\\s*\\};)"

.field private static final DEOBFUSCATION_FUNCTION_NAME_REGEXES:[Ljava/util/regex/Pattern;

.field private static final EARLY_RETURN_REGEX:Ljava/lang/String; = ";\\s*if\\s*\\(\\s*typeof\\s+[a-zA-Z0-9$_]++\\s*===?\\s*([\"\'])undefined\\1\\s*\\)\\s*return\\s+"

.field private static final FUNCTION_ARGUMENTS_REGEX:Ljava/lang/String; = "=\\s*function\\s*\\(\\s*([^)]*)\\s*\\)"

.field private static final FUNCTION_NAMES_IN_DEOBFUSCATION_ARRAY_REGEX:Ljava/lang/String; = "\\s*=\\s*\\[(.+?)][;,]"

.field private static final MULTIPLE_CHARS_REGEX:Ljava/lang/String; = "[a-zA-Z0-9$_]+"

.field private static final SINGLE_CHAR_VARIABLE_REGEX:Ljava/lang/String; = "[a-zA-Z0-9$_]"

.field private static final THROTTLING_PARAM_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "[&?]n=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->THROTTLING_PARAM_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v1, "([A-Za-z0-9_\\$]{2,})=function.*return [A-Z]\\[\\d+\\]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[a-zA-Z0-9$_]=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+\\([a-zA-Z0-9$_]+\\),[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+\\[[a-zA-Z0-9$_]+]\\|\\|null\\)&&\\([a-zA-Z0-9$_]+=([a-zA-Z0-9$_]+)\\[(\\d+)]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[a-zA-Z0-9$_]=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+\\([a-zA-Z0-9$_]+\\),[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+\\[[a-zA-Z0-9$_]+]\\|\\|null\\).+\\|\\|([a-zA-Z0-9$_]+)\\(\"\"\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ",[a-zA-Z0-9$_]+\\([a-zA-Z0-9$_]+\\),[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+\\[[a-zA-Z0-9$_]+]\\|\\|null\\)&&\\(\\b[a-zA-Z0-9$_]+=([a-zA-Z0-9$_]+)\\[(\\d+)]\\([a-zA-Z0-9$_]\\),[a-zA-Z0-9$_]+\\.set\\((?:\"n+\"|[a-zA-Z0-9$_]+),[a-zA-Z0-9$_]+\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "[a-zA-Z0-9$_]=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.get\\([a-zA-Z0-9$_]+\\)\\).+\\|\\|([a-zA-Z0-9$_]+)\\(\"\"\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "[a-zA-Z0-9$_]=\"nn\"\\[\\+[a-zA-Z0-9$_]+\\.[a-zA-Z0-9$_]+],[a-zA-Z0-9$_]+=[a-zA-Z0-9$_]+\\.get\\([a-zA-Z0-9$_]+\\)\\)&&\\([a-zA-Z0-9$_]+=([a-zA-Z0-9$_]+)\\[(\\d+)]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "\\([a-zA-Z0-9$_]=String\\.fromCharCode\\(110\\),[a-zA-Z0-9$_]=[a-zA-Z0-9$_]\\.get\\([a-zA-Z0-9$_]\\)\\)&&\\([a-zA-Z0-9$_]=([a-zA-Z0-9$_]+)(?:\\[(\\d+)])?\\([a-zA-Z0-9$_]\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "\\.get\\(\"n\"\\)\\)&&\\([a-zA-Z0-9$_]=([a-zA-Z0-9$_]+)(?:\\[(\\d+)])?\\([a-zA-Z0-9$_]\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->DEOBFUSCATION_FUNCTION_NAME_REGEXES:[Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixupFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    nop

    const-string v0, "=\\s*function\\s*\\(\\s*([^)]*)\\s*\\)"

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";\\s*if\\s*\\(\\s*typeof\\s+[a-zA-Z0-9$_]++\\s*===?\\s*([\"\'])undefined\\1\\s*\\)\\s*return\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static getDeobfuscationFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->parseFunctionWithLexer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->parseFunctionWithRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_b
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->fixupFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getDeobfuscationFunctionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->DEOBFUSCATION_FUNCTION_NAME_REGEXES:[Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchMultiplePatterns([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0
    :try_end_6
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_6} :catch_4b

    nop

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-ne v3, v1, :cond_13

    return-object v2

    :cond_13
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "var "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\s*=\\s*\\[(.+?)][;,]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v1

    return-object v6

    :catch_4b
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not find deobfuscation function with any of the known patterns in the base JavaScript player code"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getThrottlingParameterFromStreamingUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "&n="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string v0, "?n="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    :try_start_12
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->THROTTLING_PARAM_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_12 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    return-object v1
.end method

.method private static parseFunctionWithLexer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/JavaScriptExtractor;->matchToClosingBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseFunctionWithRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    nop

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\\s*function([\\S\\s]*?\\}\\s*return [\\w$]+?\\.join\\(\"\"\\)\\s*\\};)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    nop

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->validateFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static validateFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/JavaScript;->compileOrThrow(Ljava/lang/String;)V

    return-object p0
.end method
