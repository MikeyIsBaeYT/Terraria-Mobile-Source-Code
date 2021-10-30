.class public Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;
.super Lcom/flurry/org/codehaus/jackson/map/deser/std/CalendarDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarDeserializer"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer;


# direct methods
.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer;)V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;, "Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer<TT;>.CalendarDeserializer;"
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;->this$0:Lcom/flurry/org/codehaus/jackson/map/deser/StdDeserializer;

    invoke-direct {p0}, Lcom/flurry/org/codehaus/jackson/map/deser/std/CalendarDeserializer;-><init>()V

    return-void
.end method
