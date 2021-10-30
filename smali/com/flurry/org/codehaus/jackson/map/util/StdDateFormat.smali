.class public Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "StdDateFormat.java"


# static fields
.field protected static final ALL_FORMATS:[Ljava/lang/String;

.field protected static final DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_STR_ISO8601:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field protected static final DATE_FORMAT_STR_ISO8601_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field protected static final DATE_FORMAT_STR_PLAIN:Ljava/lang/String; = "yyyy-MM-dd"

.field protected static final DATE_FORMAT_STR_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field public static final instance:Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;


# instance fields
.field protected transient _formatISO8601:Ljava/text/DateFormat;

.field protected transient _formatISO8601_z:Ljava/text/DateFormat;

.field protected transient _formatPlain:Ljava/text/DateFormat;

.field protected transient _formatRFC1123:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "yyyy-MM-dd"

    aput-object v3, v1, v2

    sput-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    .line 78
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 79
    .local v0, "gmt":Ljava/util/TimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    .line 80
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    .line 82
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    .line 84
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    .line 86
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v1}, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    sput-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->instance:Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    return-void
.end method

.method public static getBlueprintISO8601Format()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getBlueprintRFC1123Format()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 131
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 132
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 133
    return-object v0
.end method

.method public static getRFC1123Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 153
    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 154
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 155
    return-object v0
.end method

.method private static final hasTimeZone(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x2b

    const/4 v2, 0x1

    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 337
    .local v1, "len":I
    const/4 v3, 0x6

    if-lt v1, v3, :cond_2

    .line 338
    add-int/lit8 v3, v1, -0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 339
    .local v0, "c":C
    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_1

    .line 345
    .end local v0    # "c":C
    :cond_0
    :goto_0
    return v2

    .line 340
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v3, v1, -0x5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 341
    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 342
    add-int/lit8 v3, v1, -0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 343
    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 345
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->clone()Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected looksLikeISO8601(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dateStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 12
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    const/4 v10, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v10}, Ljava/text/ParsePosition;-><init>(I)V

    .line 169
    .local v4, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v4}, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 170
    .local v5, "result":Ljava/util/Date;
    if-eqz v5, :cond_0

    .line 171
    return-object v5

    .line 174
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v6, "sb":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 176
    .local v1, "f":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 177
    const-string v7, "\", \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    .end local v1    # "f":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    new-instance v7, Ljava/text/ParseException;

    const-string v8, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 6
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 209
    :goto_0
    return-object v2

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 199
    .local v1, "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 201
    .local v0, "ch":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 203
    .end local v0    # "ch":C
    :cond_2
    if-gez v1, :cond_3

    .line 204
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/flurry/org/codehaus/jackson/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    new-instance v2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method protected parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 8
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x3a

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 255
    .local v2, "len":I
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 259
    .local v0, "c":C
    const/16 v5, 0xa

    if-gt v2, v5, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    .line 261
    .local v1, "df":Ljava/text/DateFormat;
    if-nez v1, :cond_0

    .line 262
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    invoke-virtual {v5}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    check-cast v1, Ljava/text/DateFormat;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    .line 322
    .restart local v1    # "df":Ljava/text/DateFormat;
    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    return-object v5

    .line 264
    .end local v1    # "df":Ljava/text/DateFormat;
    :cond_1
    if-ne v0, v7, :cond_3

    .line 265
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 266
    .restart local v1    # "df":Ljava/text/DateFormat;
    if-nez v1, :cond_2

    .line 267
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    invoke-virtual {v5}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    check-cast v1, Ljava/text/DateFormat;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 270
    .restart local v1    # "df":Ljava/text/DateFormat;
    :cond_2
    add-int/lit8 v5, v2, -0x4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .local v3, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v2, -0x1

    const-string v6, ".000"

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    goto :goto_0

    .line 277
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {p1}, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->hasTimeZone(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 278
    add-int/lit8 v5, v2, -0x3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    if-ne v0, v6, :cond_6

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v2, -0x3

    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 291
    add-int/lit8 v5, v2, -0x9

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 292
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v2, -0x5

    const-string v6, ".000"

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 299
    .restart local v1    # "df":Ljava/text/DateFormat;
    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v5, :cond_0

    .line 300
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-virtual {v5}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    check-cast v1, Ljava/text/DateFormat;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .restart local v1    # "df":Ljava/text/DateFormat;
    goto :goto_0

    .line 284
    .end local v1    # "df":Ljava/text/DateFormat;
    :cond_6
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_7

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_4

    .line 286
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 308
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x54

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    sub-int v5, v2, v5

    add-int/lit8 v4, v5, -0x1

    .line 311
    .local v4, "timeLen":I
    const/16 v5, 0x8

    if-gt v4, v5, :cond_9

    .line 312
    const-string v5, ".000"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 317
    .restart local v1    # "df":Ljava/text/DateFormat;
    if-nez v1, :cond_0

    .line 318
    sget-object v5, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    invoke-virtual {v5}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    check-cast v1, Ljava/text/DateFormat;

    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .restart local v1    # "df":Ljava/text/DateFormat;
    goto/16 :goto_0
.end method

.method protected parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
