.class public final Lcom/flurry/org/codehaus/jackson/map/deser/EnumResolver;
.super Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;
.source "EnumResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[TT;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/EnumResolver;, "Lcom/flurry/org/codehaus/jackson/map/deser/EnumResolver<TT;>;"
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[TT;"
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    .line 14
    return-void
.end method
