.class public Lcom/codeglue/terraria/codec/StringEncoderComparator;
.super Ljava/lang/Object;
.source "StringEncoderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final stringEncoder:Lcom/codeglue/terraria/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/codeglue/terraria/codec/StringEncoderComparator;->stringEncoder:Lcom/codeglue/terraria/codec/StringEncoder;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/codeglue/terraria/codec/StringEncoder;)V
    .locals 0
    .param p1, "stringEncoder"    # Lcom/codeglue/terraria/codec/StringEncoder;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/codeglue/terraria/codec/StringEncoderComparator;->stringEncoder:Lcom/codeglue/terraria/codec/StringEncoder;

    .line 59
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 82
    .local v0, "compareCode":I
    :try_start_0
    iget-object v4, p0, Lcom/codeglue/terraria/codec/StringEncoderComparator;->stringEncoder:Lcom/codeglue/terraria/codec/StringEncoder;

    invoke-interface {v4, p1}, Lcom/codeglue/terraria/codec/StringEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 83
    .local v2, "s1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Comparable<*>;>;"
    iget-object v4, p0, Lcom/codeglue/terraria/codec/StringEncoderComparator;->stringEncoder:Lcom/codeglue/terraria/codec/StringEncoder;

    invoke-interface {v4, p2}, Lcom/codeglue/terraria/codec/StringEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 84
    .local v3, "s2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/codeglue/terraria/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    .end local v2    # "s1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Comparable<*>;>;"
    .end local v3    # "s2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<*>;"
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ee":Lcom/codeglue/terraria/codec/EncoderException;
    const/4 v0, 0x0

    goto :goto_0
.end method
