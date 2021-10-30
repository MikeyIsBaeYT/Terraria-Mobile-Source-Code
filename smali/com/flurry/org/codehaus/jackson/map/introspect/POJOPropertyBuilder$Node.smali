.class final Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final explicitName:Ljava/lang/String;

.field public final isMarkedIgnored:Z

.field public final isVisible:Z

.field public final next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V
    .locals 2
    .param p3, "explName"    # Ljava/lang/String;
    .param p4, "visible"    # Z
    .param p5, "ignored"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    .local p2, "n":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    const/4 v0, 0x0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    .line 558
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .line 560
    if-nez p3, :cond_0

    .line 561
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    .line 565
    .end local p3    # "explName":Ljava/lang/String;
    :goto_0
    iput-boolean p4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    .line 566
    iput-boolean p5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    .line 567
    return-void

    .line 563
    .restart local p3    # "explName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p3, v0

    .end local p3    # "explName":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 1
    .param p0, "x0"    # Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .param p1, "x1"    # Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->append(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    return-object v0
.end method

.method private append(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    .local p1, "appendable":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->append(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 641
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_0
    return-object v0
.end method

.method public trimByVisibility()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    const/4 v3, 0x0

    .line 618
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v1, :cond_1

    move-object v0, p0

    .line 636
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->trimByVisibility()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 622
    .local v0, "newNext":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 623
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 624
    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_3
    iget-object v1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 633
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v2, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-ne v1, v2, :cond_4

    .line 634
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_4
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    .local p1, "newNext":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-ne p1, v0, :cond_0

    .line 581
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withValue(Ljava/lang/Object;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->value:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 574
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->explicitName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    iget-boolean v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;-><init>(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withoutIgnored()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isMarkedIgnored:Z

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 595
    :goto_0
    return-object v1

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    goto :goto_0

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eqz v1, :cond_2

    .line 590
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutIgnored()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .line 591
    .local v0, "newNext":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-eq v0, v1, :cond_2

    .line 592
    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v1

    goto :goto_0

    .end local v0    # "newNext":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_2
    move-object v1, p0

    .line 595
    goto :goto_0
.end method

.method public withoutNonVisible()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 601
    .local v0, "newNext":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :goto_0
    iget-boolean v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->isVisible:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withNext(Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;)Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    .end local v0    # "newNext":Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;, "Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node<TT;>;"
    :cond_0
    return-object v0

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->next:Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;->withoutNonVisible()Lcom/flurry/org/codehaus/jackson/map/introspect/POJOPropertyBuilder$Node;

    move-result-object v0

    goto :goto_0
.end method
