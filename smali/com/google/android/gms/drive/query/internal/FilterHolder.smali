.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field private final zzadx:Lcom/google/android/gms/drive/query/Filter;

.field final zzahU:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/ComparisonFilter",
            "<*>;"
        }
    .end annotation
.end field

.field final zzahV:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

.field final zzahW:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

.field final zzahX:Lcom/google/android/gms/drive/query/internal/NotFilter;

.field final zzahY:Lcom/google/android/gms/drive/query/internal/InFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/InFilter",
            "<*>;"
        }
    .end annotation
.end field

.field final zzahZ:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

.field final zzaia:Lcom/google/android/gms/drive/query/internal/HasFilter;

.field final zzaib:Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;

.field final zzaic:Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/ComparisonFilter;Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Lcom/google/android/gms/drive/query/internal/LogicalFilter;Lcom/google/android/gms/drive/query/internal/NotFilter;Lcom/google/android/gms/drive/query/internal/InFilter;Lcom/google/android/gms/drive/query/internal/MatchAllFilter;Lcom/google/android/gms/drive/query/internal/HasFilter;Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p3, "fieldOnlyFilter"    # Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
    .param p4, "logicalFilter"    # Lcom/google/android/gms/drive/query/internal/LogicalFilter;
    .param p5, "notFilter"    # Lcom/google/android/gms/drive/query/internal/NotFilter;
    .param p7, "matchAllFilter"    # Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
    .param p9, "fullTextSearchFilter"    # Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;
    .param p10, "ownedByMeFilter"    # Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/query/internal/ComparisonFilter",
            "<*>;",
            "Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;",
            "Lcom/google/android/gms/drive/query/internal/LogicalFilter;",
            "Lcom/google/android/gms/drive/query/internal/NotFilter;",
            "Lcom/google/android/gms/drive/query/internal/InFilter",
            "<*>;",
            "Lcom/google/android/gms/drive/query/internal/MatchAllFilter;",
            "Lcom/google/android/gms/drive/query/internal/HasFilter",
            "<*>;",
            "Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;",
            "Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "comparisonField":Lcom/google/android/gms/drive/query/internal/ComparisonFilter;, "Lcom/google/android/gms/drive/query/internal/ComparisonFilter<*>;"
    .local p6, "containsFilter":Lcom/google/android/gms/drive/query/internal/InFilter;, "Lcom/google/android/gms/drive/query/internal/InFilter<*>;"
    .local p8, "hasFilter":Lcom/google/android/gms/drive/query/internal/HasFilter;, "Lcom/google/android/gms/drive/query/internal/HasFilter<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahU:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahV:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahW:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahX:Lcom/google/android/gms/drive/query/internal/NotFilter;

    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahY:Lcom/google/android/gms/drive/query/internal/InFilter;

    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahZ:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaia:Lcom/google/android/gms/drive/query/internal/HasFilter;

    iput-object p9, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaib:Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;

    iput-object p10, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaic:Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahU:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahU:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahV:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahV:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahW:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahW:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahX:Lcom/google/android/gms/drive/query/internal/NotFilter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahX:Lcom/google/android/gms/drive/query/internal/NotFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahY:Lcom/google/android/gms/drive/query/internal/InFilter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahY:Lcom/google/android/gms/drive/query/internal/InFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahZ:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahZ:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaia:Lcom/google/android/gms/drive/query/internal/HasFilter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaia:Lcom/google/android/gms/drive/query/internal/HasFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaib:Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaib:Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaic:Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaic:Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one filter must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Filter;)V
    .locals 2
    .param p1, "filter"    # Lcom/google/android/gms/drive/query/Filter;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null filter."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzCY:I

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahU:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahV:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahW:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/NotFilter;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahX:Lcom/google/android/gms/drive/query/internal/NotFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/InFilter;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahY:Lcom/google/android/gms/drive/query/internal/InFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahZ:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/HasFilter;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/HasFilter;

    :goto_6
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaia:Lcom/google/android/gms/drive/query/internal/HasFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;

    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaib:Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;

    :goto_8
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaic:Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahU:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahV:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahW:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahX:Lcom/google/android/gms/drive/query/internal/NotFilter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahY:Lcom/google/android/gms/drive/query/internal/InFilter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzahZ:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaia:Lcom/google/android/gms/drive/query/internal/HasFilter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaib:Lcom/google/android/gms/drive/query/internal/FullTextSearchFilter;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaic:Lcom/google/android/gms/drive/query/internal/OwnedByMeFilter;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid filter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move-object v0, v1

    goto :goto_6

    :cond_7
    move-object v0, v1

    goto :goto_7

    :cond_8
    move-object v0, v1

    goto :goto_8

    :cond_9
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lcom/google/android/gms/drive/query/Filter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FilterHolder[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzadx:Lcom/google/android/gms/drive/query/Filter;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzd;->zza(Lcom/google/android/gms/drive/query/internal/FilterHolder;Landroid/os/Parcel;I)V

    return-void
.end method
