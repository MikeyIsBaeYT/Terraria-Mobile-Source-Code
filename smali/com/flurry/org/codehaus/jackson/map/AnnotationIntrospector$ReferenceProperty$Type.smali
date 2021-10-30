.class public final enum Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;
.super Ljava/lang/Enum;
.source "AnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

.field public static final enum BACK_REFERENCE:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

.field public static final enum MANAGED_REFERENCE:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    const-string v1, "MANAGED_REFERENCE"

    invoke-direct {v0, v1, v2}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    .line 59
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    const-string v1, "BACK_REFERENCE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->$VALUES:[Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    return-object v0
.end method

.method public static values()[Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->$VALUES:[Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-virtual {v0}, [Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    return-object v0
.end method
