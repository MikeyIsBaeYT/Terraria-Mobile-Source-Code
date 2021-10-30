.class public abstract Lcom/amazon/headtracking/filter/PropertyFilter$FilterProperty;
.super Ljava/lang/Object;
.source "PropertyFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/headtracking/filter/PropertyFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FilterProperty"
.end annotation


# instance fields
.field public final defValue:D

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract get(Lcom/amazon/headtracking/filter/PropertyFilter;)D
.end method

.method public abstract set(Lcom/amazon/headtracking/filter/PropertyFilter;D)V
.end method
