.class public final synthetic Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getStorageSize()J

    move-result-wide p0

    return-wide p0
.end method
