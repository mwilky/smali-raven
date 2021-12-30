.class public final synthetic Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/storage/VolumeRecord;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->$r8$lambda$8lx_k0zHYH1BOju74_zXZQI5T1c(Landroid/os/storage/VolumeRecord;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p0

    return-object p0
.end method
