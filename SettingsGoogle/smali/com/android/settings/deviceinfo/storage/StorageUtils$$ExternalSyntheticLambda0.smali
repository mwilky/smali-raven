.class public final synthetic Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/os/storage/VolumeInfo;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->$r8$lambda$Bf0vLRmiSmm3MH67KlFFfPjOwQU(Landroid/os/storage/VolumeInfo;)Z

    move-result p0

    return p0
.end method
