.class public final Lcom/google/android/gms/games/appcontent/AppContentConditionRef;
.super Lcom/google/android/gms/games/appcontent/MultiDataBufferRef;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentCondition;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "dataRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "dataHolderCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/common/data/DataHolder;>;"
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/games/appcontent/MultiDataBufferRef;-><init>(Ljava/util/ArrayList;II)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentCondition;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;->zzsi()Lcom/google/android/gms/games/appcontent/AppContentCondition;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentCondition;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;->zzsi()Lcom/google/android/gms/games/appcontent/AppContentCondition;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzse()Ljava/lang/String;
    .locals 1

    const-string v0, "condition_default_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzsf()Ljava/lang/String;
    .locals 1

    const-string v0, "condition_expected_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzsg()Ljava/lang/String;
    .locals 1

    const-string v0, "condition_predicate"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzsh()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;->zzWu:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;->zzaoD:Ljava/util/ArrayList;

    const-string v2, "condition_predicate_parameters"

    iget v3, p0, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;->zzYs:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzd(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public zzsi()Lcom/google/android/gms/games/appcontent/AppContentCondition;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;-><init>(Lcom/google/android/gms/games/appcontent/AppContentCondition;)V

    return-object v0
.end method
