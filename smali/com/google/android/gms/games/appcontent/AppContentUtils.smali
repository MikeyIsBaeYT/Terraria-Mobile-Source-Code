.class public final Lcom/google/android/gms/games/appcontent/AppContentUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAction;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/google/android/gms/games/appcontent/AppContentUtils$1;

    invoke-direct {v5, v7}, Lcom/google/android/gms/games/appcontent/AppContentUtils$1;-><init>(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    const-string v3, "action_id"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method private static zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p4}, Lcom/google/android/gms/common/data/DataHolder;->zzbh(I)I

    move-result v1

    invoke-virtual {p0, p2, p4, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzbh(I)I

    move-result v4

    invoke-virtual {v0, p3, v1, v4}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzkx;->zzb([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p5, p6, v1}, Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;->zzb(Ljava/util/ArrayList;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotation;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/google/android/gms/games/appcontent/AppContentUtils$2;

    invoke-direct {v5, v7}, Lcom/google/android/gms/games/appcontent/AppContentUtils$2;-><init>(Ljava/util/ArrayList;)V

    const/4 v1, 0x2

    const-string v3, "annotation_id"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method public static zzc(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCondition;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/google/android/gms/games/appcontent/AppContentUtils$3;

    invoke-direct {v5, v7}, Lcom/google/android/gms/games/appcontent/AppContentUtils$3;-><init>(Ljava/util/ArrayList;)V

    const/4 v1, 0x4

    const-string v3, "condition_id"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method public static zzd(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/4 v1, 0x3

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    new-instance v5, Lcom/google/android/gms/games/appcontent/AppContentUtils$4;

    invoke-direct {v5, v0, v7}, Lcom/google/android/gms/games/appcontent/AppContentUtils$4;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Bundle;)V

    const-string v3, "tuple_id"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V

    return-object v7
.end method
