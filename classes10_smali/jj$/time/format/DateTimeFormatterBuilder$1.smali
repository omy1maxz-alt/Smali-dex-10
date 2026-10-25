.class Ljj$/time/format/DateTimeFormatterBuilder$1;
.super Ljj$/time/format/DateTimeTextProvider;
.source "DateTimeFormatterBuilder.java"


# instance fields
.field final synthetic this$0:Ljj$/time/format/DateTimeFormatterBuilder;

.field final synthetic val$store:Ljj$/time/format/DateTimeTextProvider$LocaleStore;


# direct methods
.method constructor <init>(Ljj$/time/format/DateTimeFormatterBuilder;Ljj$/time/format/DateTimeTextProvider$LocaleStore;)V
    .registers 3

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$1;->this$0:Ljj$/time/format/DateTimeFormatterBuilder;

    iput-object p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$1;->val$store:Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {p0}, Ljj$/time/format/DateTimeTextProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getText(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalField;JLjj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$1;->val$store:Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p3, p4, p5}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljj$/time/temporal/TemporalField;JLjj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$1;->val$store:Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p2, p3, p4}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjj$/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextIterator(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 6

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$1;->val$store:Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p3}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljj$/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getTextIterator(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .registers 5

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$1;->val$store:Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-virtual {v0, p2}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljj$/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
