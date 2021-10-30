.class Lcom/chartboost/sdk/impl/bz$i;
.super Lcom/chartboost/sdk/impl/bz$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/cb;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bz$c;-><init>(Lcom/chartboost/sdk/impl/cb;)V

    .line 199
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 5

    .prologue
    .line 203
    check-cast p1, Ljava/util/Date;

    .line 204
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/util/GregorianCalendar;

    new-instance v2, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x0

    const-string v4, "GMT"

    invoke-direct {v2, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 208
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bz$i;->a:Lcom/chartboost/sdk/impl/cb;

    new-instance v2, Lcom/chartboost/sdk/impl/bs;

    const-string v3, "$date"

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/chartboost/sdk/impl/bs;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2, p2}, Lcom/chartboost/sdk/impl/cb;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 211
    return-void
.end method
