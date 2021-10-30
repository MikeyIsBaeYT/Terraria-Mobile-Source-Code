.class public abstract Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;
.super Lcom/flurry/org/apache/avro/data/RecordBuilderBase;
.source "SpecificErrorBuilderBase.java"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/ErrorBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;",
        ">",
        "Lcom/flurry/org/apache/avro/data/RecordBuilderBase",
        "<TT;>;",
        "Lcom/flurry/org/apache/avro/data/ErrorBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private errorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private hasCause:Z

.field private hasValue:Z

.field private value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/flurry/org/apache/avro/Schema;)V
    .locals 1
    .param p1, "schema"    # Lcom/flurry/org/apache/avro/Schema;

    .prologue
    .line 43
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    .local p1, "other":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/data/RecordBuilderBase;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 52
    iget-object v0, p1, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->errorConstructor:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->errorConstructor:Ljava/lang/reflect/Constructor;

    .line 53
    iget-object v0, p1, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    .line 54
    iget-boolean v0, p1, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    .line 55
    iget-object v0, p1, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    .line 56
    iget-boolean v0, p1, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    .local p1, "other":Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;, "TT;"
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;->getSchema()Lcom/flurry/org/apache/avro/Schema;

    move-result-object v2

    invoke-static {}, Lcom/flurry/org/apache/avro/specific/SpecificData;->get()Lcom/flurry/org/apache/avro/specific/SpecificData;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/flurry/org/apache/avro/data/RecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;Lcom/flurry/org/apache/avro/generic/GenericData;)V

    .line 66
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "otherValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->setValue(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/org/apache/avro/specific/SpecificExceptionBase;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 72
    .local v0, "otherCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->setCause(Ljava/lang/Throwable;)Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic clearCause()Lcom/flurry/org/apache/avro/data/ErrorBuilder;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->clearCause()Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public clearCause()Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    .line 122
    return-object p0
.end method

.method public bridge synthetic clearValue()Lcom/flurry/org/apache/avro/data/ErrorBuilder;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    invoke-virtual {p0}, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->clearValue()Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public clearValue()Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    .line 98
    return-object p0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasCause()Z
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    iget-boolean v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    return v0
.end method

.method public bridge synthetic setCause(Ljava/lang/Throwable;)Lcom/flurry/org/apache/avro/data/ErrorBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->setCause(Ljava/lang/Throwable;)Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public setCause(Ljava/lang/Throwable;)Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->cause:Ljava/lang/Throwable;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasCause:Z

    .line 110
    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/data/ErrorBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->setValue(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;, "Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase<TT;>;"
    iput-object p1, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->value:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/org/apache/avro/specific/SpecificErrorBuilderBase;->hasValue:Z

    .line 86
    return-object p0
.end method
