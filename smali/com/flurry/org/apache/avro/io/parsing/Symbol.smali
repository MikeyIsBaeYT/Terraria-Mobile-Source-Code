.class public abstract Lcom/flurry/org/apache/avro/io/parsing/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumLabelsAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$UnionAdjustAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$DefaultStartAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldOrderAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$FieldAdjustAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$SkipAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$WriterUnionAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$EnumAdjustAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$IntCheckAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;,
        Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;
    }
.end annotation


# static fields
.field public static final ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final DEFAULT_END_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final FIELD_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final FIELD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final RECORD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final RECORD_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

.field public static final UNION_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;


# instance fields
.field public final kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

.field public final production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "null"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->NULL:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 522
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "boolean"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BOOLEAN:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 523
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "int"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->INT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 524
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "long"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->LONG:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 525
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "float"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FLOAT:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 526
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "double"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DOUBLE:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 527
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "string"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->STRING:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 528
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "bytes"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->BYTES:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 529
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "fixed"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIXED:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 530
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "enum"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ENUM:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 531
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "union"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 533
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "array-start"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 534
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "array-end"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ARRAY_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 535
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "map-start"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 536
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "map-end"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 537
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "item-end"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->ITEM_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 540
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "field-action"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIELD_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 543
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_START:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 544
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;

    invoke-direct {v0, v3, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->RECORD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 545
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;

    invoke-direct {v0, v3, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->UNION_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 546
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;

    invoke-direct {v0, v3, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->FIELD_END:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 548
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;

    invoke-direct {v0, v3, v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ImplicitAction;-><init>(ZLcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->DEFAULT_END_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 549
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;

    const-string v1, "map-key-marker"

    invoke-direct {v0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Terminal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->MAP_KEY_MARKER:Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;)V
    .locals 1
    .param p1, "kind"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 0
    .param p1, "kind"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;
    .param p2, "production"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 84
    iput-object p1, p0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    .line 85
    return-void
.end method

.method static alt([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2
    .param p0, "symbols"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p1, "labels"    # [Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Alternative;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Ljava/lang/String;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method static error(Ljava/lang/String;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2
    .param p0, "e"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ErrorAction;-><init>(Ljava/lang/String;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method static flatten([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I[Lcom/flurry/org/apache/avro/io/parsing/Symbol;ILjava/util/Map;Ljava/util/Map;)V
    .locals 8
    .param p0, "in"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p1, "start"    # I
    .param p2, "out"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            "I[",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;",
            "I",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p4, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;>;"
    .local p5, "map2":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;>;"
    move v0, p1

    .local v0, "i":I
    move v1, p3

    .local v1, "j":I
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_2

    .line 188
    aget-object v6, p0, v0

    invoke-virtual {v6, p4, p5}, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    move-result-object v5

    .line 189
    .local v5, "s":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    instance-of v6, v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    if-eqz v6, :cond_1

    .line 190
    iget-object v4, v5, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->production:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .line 191
    .local v4, "p":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 192
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;"
    if-nez v3, :cond_0

    .line 193
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, p2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    :goto_1
    array-length v6, v4

    add-int/2addr v1, v6

    .line 187
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;"
    .end local v4    # "p":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .restart local v3    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;"
    .restart local v4    # "p":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_0
    new-instance v6, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;

    invoke-direct {v6, p2, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    .end local v3    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;"
    .end local v4    # "p":[Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aput-object v5, p2, v1

    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_2

    .line 202
    .end local v5    # "s":Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_2
    return-void
.end method

.method protected static flattenedSize([Lcom/flurry/org/apache/avro/io/parsing/Symbol;I)I
    .locals 4
    .param p0, "symbols"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p1, "start"    # I

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "result":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 215
    aget-object v3, p0, v0

    instance-of v3, v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    if-eqz v3, :cond_0

    .line 216
    aget-object v2, p0, v0

    check-cast v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    .line 217
    .local v2, "s":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;
    invoke-virtual {v2}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;->flattenedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 214
    .end local v2    # "s":Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    :cond_1
    return v1
.end method

.method static varargs repeat(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2
    .param p0, "endSymbol"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p1, "symsToRepeat"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 106
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Repeater;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;[Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method static resolve(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2
    .param p0, "w"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .param p1, "r"    # Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 131
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$ResolvingAction;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method static varargs root([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2
    .param p0, "symbols"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 91
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Root;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method

.method static varargs seq([Lcom/flurry/org/apache/avro/io/parsing/Symbol;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 2
    .param p0, "production"    # [Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    .prologue
    .line 98
    new-instance v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;-><init>([Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Symbol$1;)V

    return-object v0
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;",
            ">;>;)",
            "Lcom/flurry/org/apache/avro/io/parsing/Symbol;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Sequence;Ljava/util/List<Lcom/flurry/org/apache/avro/io/parsing/Symbol$Fixup;>;>;"
    return-object p0
.end method

.method public flattenedSize()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method
