.class final Lcom/flurry/android/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fJ:Ljava/lang/String;

.field private fK:J

.field private fL:J

.field private fM:J

.field private fN:Ljava/lang/String;

.field private fO:Ljava/lang/String;

.field private fP:I

.field private fQ:Ljava/lang/String;

.field private fR:Landroid/location/Location;

.field private fS:I

.field private fT:B

.field private fU:Ljava/lang/Long;

.field private fV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/fx;",
            ">;"
        }
    .end annotation
.end field

.field private fW:I

.field private fX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cb;",
            ">;"
        }
    .end annotation
.end field

.field private fY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/k;",
            ">;"
        }
    .end annotation
.end field

.field private fZ:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v2, p0, Lcom/flurry/android/eb;->fK:J

    .line 15
    iput-wide v2, p0, Lcom/flurry/android/eb;->fL:J

    .line 16
    iput-wide v2, p0, Lcom/flurry/android/eb;->fM:J

    .line 19
    iput v0, p0, Lcom/flurry/android/eb;->fP:I

    .line 22
    iput v0, p0, Lcom/flurry/android/eb;->fS:I

    .line 23
    iput-byte v0, p0, Lcom/flurry/android/eb;->fT:B

    .line 27
    iput v0, p0, Lcom/flurry/android/eb;->fW:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/eb;->fZ:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/flurry/android/eb;->fR:Landroid/location/Location;

    .line 99
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/flurry/android/eb;->fZ:Z

    .line 163
    return-void
.end method

.method final aJ()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/flurry/android/eb;->fK:J

    return-wide v0
.end method

.method final aK()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/flurry/android/eb;->fL:J

    return-wide v0
.end method

.method final aL()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/flurry/android/eb;->fM:J

    return-wide v0
.end method

.method final aM()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/flurry/android/eb;->fP:I

    return v0
.end method

.method final aN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/android/eb;->fQ:Ljava/lang/String;

    return-object v0
.end method

.method final aO()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/flurry/android/eb;->fS:I

    return v0
.end method

.method final aP()B
    .locals 1

    .prologue
    .line 118
    iget-byte v0, p0, Lcom/flurry/android/eb;->fT:B

    return v0
.end method

.method final aQ()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flurry/android/eb;->fU:Ljava/lang/Long;

    return-object v0
.end method

.method final aR()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/flurry/android/eb;->fW:I

    return v0
.end method

.method final aS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/fx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/android/eb;->fV:Ljava/util/List;

    return-object v0
.end method

.method final aT()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/android/eb;->fY:Ljava/util/Map;

    return-object v0
.end method

.method final aU()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/flurry/android/eb;->fZ:Z

    return v0
.end method

.method final b(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/flurry/android/eb;->fP:I

    .line 83
    return-void
.end method

.method final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/flurry/android/eb;->fY:Ljava/util/Map;

    .line 155
    return-void
.end method

.method final c(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/flurry/android/eb;->fS:I

    .line 107
    return-void
.end method

.method final c(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/flurry/android/eb;->fU:Ljava/lang/Long;

    .line 123
    return-void
.end method

.method final d(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/flurry/android/eb;->fW:I

    .line 131
    return-void
.end method

.method final d(J)V
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/flurry/android/eb;->fK:J

    .line 43
    return-void
.end method

.method final e(J)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/flurry/android/eb;->fL:J

    .line 51
    return-void
.end method

.method final e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/fx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/flurry/android/eb;->fV:Ljava/util/List;

    .line 139
    return-void
.end method

.method final f(J)V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/eb;->fM:J

    .line 59
    return-void
.end method

.method final f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/flurry/android/eb;->fX:Ljava/util/List;

    .line 147
    return-void
.end method

.method final getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/cb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/android/eb;->fX:Ljava/util/List;

    return-object v0
.end method

.method final getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/android/eb;->fN:Ljava/lang/String;

    return-object v0
.end method

.method final getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/android/eb;->fR:Landroid/location/Location;

    return-object v0
.end method

.method final getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/flurry/android/eb;->fO:Ljava/lang/String;

    return-object v0
.end method

.method final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/android/eb;->fJ:Ljava/lang/String;

    return-object v0
.end method

.method final setGender(B)V
    .locals 0

    .prologue
    .line 114
    iput-byte p1, p0, Lcom/flurry/android/eb;->fT:B

    .line 115
    return-void
.end method

.method final setTimeZone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/flurry/android/eb;->fO:Ljava/lang/String;

    .line 75
    return-void
.end method

.method final setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/flurry/android/eb;->fQ:Ljava/lang/String;

    .line 91
    return-void
.end method

.method final setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/flurry/android/eb;->fJ:Ljava/lang/String;

    .line 35
    return-void
.end method

.method final y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/android/eb;->fN:Ljava/lang/String;

    .line 67
    return-void
.end method
